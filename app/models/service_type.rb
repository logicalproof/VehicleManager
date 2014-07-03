class ServiceType < ActiveRecord::Base
	has_many :vehicle_services

	validates :name, presence: true, uniqueness: true
	validates :mileage_interval, presence: true
	validates :month_interval, presence: true

	after_create :make_vehicle_services



	protected

	def make_vehicle_services
		vehicles = Vehicle.all
		unless vehicles.empty?
			vehicles.each do |v|
				vehicle_services.create(attributes = { :service_record_id => v.service_record.id, :service_type_id => self.id, :date_of_service => "1900-01-01 00:00:01", :mileage_at_service => 0 })
			end
		else
		end
	end
end
