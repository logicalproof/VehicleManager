# == Schema Information
#
# Table name: vehicles
#
#  id              :integer          not null, primary key
#  number          :string(255)
#  current_mileage :integer
#  created_at      :datetime
#  updated_at      :datetime
#  make            :string(255)
#  model           :string(255)
#  year            :string(255)
#  purchase_date   :date
#  sold            :boolean
#  sold_date       :date
#

class Vehicle < ActiveRecord::Base
	has_one :service_record, dependent: :destroy
	has_many :vehicle_services, :through => :service_record
	has_one :vehicle_assignment
	has_one :user, :through => :vehicle_assignment
	has_many :checklists

	validates :number, presence: true, uniqueness: true
	validates :current_mileage, presence: true
	validates :purchase_date, presence: true

	after_create :make_service_record


	protected

	def make_service_record
		create_service_record(attributes = { :vehicle_id => self.id })
	end
end
