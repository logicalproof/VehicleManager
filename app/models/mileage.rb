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
    due_service = []
    current_services.each do |service|
      mileage_due = service.mileage_at_service + service.service_type.mileage_interval
      due_date = service.date_of_service + service.service_type.month_interval.months
      if miles > (mileage_due)
        due_service << service
      elsif 15.minutes.ago > (due_date)
        due_service << service
      elsif miles > (mileage_due - 200)
        due_service << service
      elsif 15.minutes.ago > (due_date - 10.days)
        due_service << service
      end
    end
    due_service
  end

  private

    def current_services
    	service_list = VehicleInspectionReport::SERVICES
      current = []
    	service_list.each do |service|
        current << vehicle.vehicle_services.where("service_type_id = #{service}").order(:created_at).last
      end
      return current
    end

    def send_notification
      services = {:overdue => [], :upcoming => []}
      if self.vehicle.vehicle_assignment
        assigned_driver = self.vehicle.vehicle_assignment.user.email
      else
        assigned_driver = "fleetmanagement@americanfire.com"
      end
      vsr = VehicleServiceRecord.find_by_vehicle_id(self.vehicle_id)
      VehicleInspectionReport::SERVICES do |service|
        mileage_due = service.mileage_at_service + 
        due_date = service.date_of_service + service.service_type.month_interval.months
        
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
