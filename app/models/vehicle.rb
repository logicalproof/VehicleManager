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
	has_one :vehicle_assignment, dependent: :destroy
	has_one :user, :through => :vehicle_assignment
	has_many :mileages
  has_one :vehicle_service_record, dependent: :destroy
  has_many :vehicle_inspection_reports, through: :vehicle_service_record
  has_many :weekly_reports
  attr_accessor :user_id #to pass the current user into make_mileage_record

	validates :number, presence: true, uniqueness: true
	validates :current_mileage, presence: true
	validates :purchase_date, presence: true

  after_create :make_vehicle_service_record
	after_create :make_mileage_record
	after_update :make_mileage_record


  def driver
    if self.vehicle_assignment
  	  return self.user.email
    else
      return "N/A"
    end
  end

  def self.search(query)
    where("number like ?", "%#{query}%") 
  end


	protected


  def make_vehicle_service_record
    create_vehicle_service_record(attributes = { :vehicle_id => self.id })
  end

	def make_mileage_record
		if self.mileages.count == 0
		  self.mileages.create(attributes = { :vehicle_id => self.id, :user_id => self.user_id, :miles => self.current_mileage })
    elsif self.mileages.last.miles < current_mileage
      self.mileages.create(attributes = { :vehicle_id => self.id, :user_id => self.user_id, :miles => self.current_mileage })
    end
	end

end
