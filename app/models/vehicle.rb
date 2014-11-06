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
	has_many :mileages
	has_many :vehicle_inspection_reports
  attr_accessor :user_id #to pass the current user into make_mileage_record

	validates :number, presence: true, uniqueness: true
	validates :current_mileage, presence: true
	validates :purchase_date, presence: true

	after_create :make_service_record
	after_create :make_mileage_record
	after_update :make_mileage_record


  def driver
  	self.vehicle_assignment.user.email
  end


	protected

	def make_service_record
		create_service_record(attributes = { :vehicle_id => self.id })
	end

	def make_mileage_record
		if self.mileages.count == 0
		  self.mileages.create(attributes = { :vehicle_id => self.id, :user_id => self.user_id, :miles => self.current_mileage })
    elsif self.mileages.last.miles < current_mileage
      self.mileages.create(attributes = { :vehicle_id => self.id, :user_id => self.user_id, :miles => self.current_mileage })
    end
	end



end
