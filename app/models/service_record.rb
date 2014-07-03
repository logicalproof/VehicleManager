class ServiceRecord < ActiveRecord::Base
	belongs_to :vehicle
	has_many :vehicle_services

	validates :vehicle_id, presence: true, uniqeness: true
end
