class ServiceType < ActiveRecord::Base
	has_many :vehicle_services

	validates :name, presence: true, uniqueness: true
	validates :mileage_interval, presence: true, numericality: true
	validates :month_interval, presence: true, numericality: true

 
	after_create :make_vehicle_services

	


	protected

	def make_vehicle_services
		vehicles = Vehicle.all
		unless vehicles.empty?
			vehicles.each do |v|
				vehicle_services.create(attributes = { :service_record_id => v.service_record.id, :service_type_id => self.id, :date_of_service => v.purchase_date, :mileage_at_service => v.current_mileage })
			end
		else
		end
	end
end
