class Vehicle < ActiveRecord::Base
	has_one :service_record
	has_many :vehicle_services, :through => :service_record

	validates :number, presence: true, uniqeness: true
	validates :current_mileage, presence: true
end
