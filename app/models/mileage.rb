# == Schema Information
#
# Table name: mileages
#
#  id         :integer          not null, primary key
#  miles      :integer
#  vehicle_id :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Mileage < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :user

  after_create :check_for_upcoming_service
  after_create :send_notification

  def check_for_upcoming_service
    self.vehicle.vehicle_service_record.check_for_upcoming_service
  end

  private

    def current_services
    	self.vehicle.vehicle_service_record
    end

    def send_notification
      services = {:overdue => [], :upcoming => []}
      if self.vehicle.vehicle_assignment
        assigned_driver = self.vehicle.vehicle_assignment.user.email
      else
        assigned_driver = "fleetmanagement@americanfire.com"
      end
      
      check_for_upcoming_service.each do |service|
        p service
        mileage_due = service[1][:due_mileage]
        due_date = service[1][:due_date]
        
        if miles > (mileage_due)
          services[:overdue] << service
        elsif 15.minutes.ago > (due_date)
          services[:overdue] << service
        elsif miles > (mileage_due - 200)
          services[:upcoming] << service
        elsif 15.minutes.ago > (due_date - 10.days)
          services[:upcoming] << service
        end
      end
      if services[:overdue].count > 0 || services[:upcoming].count > 0
        ServiceMailer.notify_driver(assigned_driver, self.vehicle, services).deliver
      end
    end
end
