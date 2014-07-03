class VehicleService < ActiveRecord::Base
	belongs_to :service_record
	belongs_to :service_type

	validates :date_of_service, presence: true
	validates :mileage_at_service, presence: true
	validates :service_record_id, presence: true
	validates :service_type_id, presence: true
end
