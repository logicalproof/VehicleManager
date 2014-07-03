class ServiceRecord < ActiveRecord::Base
	belongs_to :vehicle
	has_many :vehicle_services

	validates :vehicle_id, presence: true, uniqueness: true

	after_create :make_vehicle_services



	protected

	def make_vehicle_services
		service_types = ServiceType.all
		unless service_types.empty?
			service_types.each do |st|
				vehicle_services.create(attributes = { :service_record_id => self.id, :service_type_id => st.id, :date_of_service => "1900-01-01 00:00:01", :mileage_at_service => 0 })
			end
		else
		end
	end
end
