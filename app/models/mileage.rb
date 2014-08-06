# == Schema Information
#
# Table name: mileages
#
#  id         :integer          not null, primary key
#  miles      :integer
#  vehicle_id :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Mileage < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :user

  after_create :check_for_upcoming_service

  def check_for_upcoming_service
    mileage_due = service.mileage_at_service + service.service_type.mileage_interval
    due_date = service.updated_at + service.service_type.month_interval.months
    current_services.each do |service|
      if miles > (mileage_due)
        logger.info "#{service.service_type.name} is due on Vehicle #{self.vehicle.number} for driver #{self.user.email}"
      elsif Time.now > (due_date)
        logger.info "#{service.service_type.name} is due on Vehicle #{self.vehicle.number} for driver #{self.user.email}"
      elsif miles > (mileage_due - 200)
        logger.info "#{service.service_type.name} is due in #{mileage_due - miles} miles for Vehicle #{self.vehicle.number} for driver #{self.user.email}"
      elsif Time.now > (due_date - 10.days)
        logger.info "#{service.service_type.name} is due in 10 days for Vehicle #{self.vehicle.number} for driver #{self.user.email}"
      end
    end
  end

  private

    def current_services
    	services = ServiceType.all
    	service_list = []
      current = []
    	unless services.empty?
    		services.each do |service|
    			service_list << service.id
    		end
    	end
    	service_list.each do |service|
        current << vehicle.vehicle_services.where("service_type_id = #{service}").order(:created_at).last
      end
      return current
    end
end
