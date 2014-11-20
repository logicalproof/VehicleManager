# == Schema Information
#
# Table name: weekly_reports
#
#  id           :integer          not null, primary key
#  appearance   :boolean
#  tires        :boolean
#  lights       :boolean
#  mechanical   :boolean
#  electrical   :boolean
#  fluid_levels :boolean
#  mileage      :integer
#  comments     :text
#  created_at   :datetime
#  updated_at   :datetime
#  vehicle_id   :integer
#  user_id      :integer
#

class WeeklyReport < ActiveRecord::Base
  belongs_to :user
  belongs_to :vehicle
  after_create :update_mileage_from_service
  after_create :check_for_failures

  validates :mileage, presence: true
  def update_mileage_from_service
    vehicle = self.vehicle
    if vehicle.current_mileage < self.mileage
      vehicle.current_mileage = self.mileage
      vehicle.user_id = self.user_id
      vehicle.save
    else
      errors.add :current_mileage, "inputed cannot be less than previous mileage."
    end
  end
  def check_for_failures
    properties = [:appearance, :tires, :lights, :mechanical, :electrical, :fluid_levels]
    failures = []
    properties.each do |property|
      p self.method(property).call
      if self.method(property).call == false
        failures << property
      end
    end
    if failures.length > 0
      ServiceMailer.notify_mechanic(self.user, self.vehicle, failures).deliver
    end
  end
end
