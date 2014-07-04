class VehicleService < ActiveRecord::Base
	belongs_to :service_record
	belongs_to :service_type

	validates :date_of_service, presence: true
	validates :mileage_at_service, presence: true
	validates :service_record_id, presence: true
	validates :service_type_id, presence: true

	def check_for_default_date
		if self.date_of_service.to_s == "1900-01-01"
			return "Add a date"
		else
			return self.date_of_service
		end
	end

	def check_for_default_mileage
		if self.mileage_at_service == 0
			return "Add mileage of service"
		else
			return self.mileage_at_service
		end
	end
end
