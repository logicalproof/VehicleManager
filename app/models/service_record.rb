class ServiceRecord < ActiveRecord::Base
	belongs_to :vehicle
	has_many :vehicle_services

	validates :vehicle_id, presence: true, uniqueness: true

	after_create :make_vehicle_services



	protected

	def make_vehicle_services
		vehicle_services = ServiceType.all
		if vehicle_services
			vehicle_services.each do |vs|
				service = build_vehicle_service(attributes = { :service_record_id => self.id, :service_type_id => vs.id, :date_of_service => "1900-01-01 00:00:01", :mileage_at_service => 0 })
				service.save
			end
		else
		end
	end
end
