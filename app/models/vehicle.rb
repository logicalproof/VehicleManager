class Vehicle < ActiveRecord::Base
	has_one :service_record, dependent: :destroy
	has_many :vehicle_services, :through => :service_record

	validates :number, presence: true, uniqueness: true
	validates :current_mileage, presence: true

	after_create :make_service_record



	protected

	def make_service_record
		create_service_record(attributes = { :vehicle_id => self.id })
	end
end
