class ServiceRecord < ActiveRecord::Base
	belongs_to :vehicle
	has_many :vehicle_services

	validates :vehicle_id, presence: true, uniqueness: true

	after_create :make_vehicle_services



	protected

	def make_vehicle_services
		service_types = ServiceType.all
		v = Vehicle.find(self.vehicle_id)
		unless service_types.empty?
			service_types.each do |st|
				vehicle_services.create(attributes = { :service_record_id => self.id, :service_type_id => st.id, :date_of_service => v.purchase_date, :mileage_at_service => v.current_mileage })
			end
		else
		end
	end
end
