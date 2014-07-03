class ServiceType < ActiveRecord::Base
	has_many :service_types

	validates :name, presence: true, uniqueness: true
	validates :mileage_interval, presence: true
	validates :month_interval, presence: true
end
