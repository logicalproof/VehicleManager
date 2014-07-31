# == Schema Information
#
# Table name: checklists
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  comments          :text
#  created_at        :datetime
#  updated_at        :datetime
#  checklist_type_id :integer
#  properties        :text
#  user_id           :integer
#  vehicle_id        :integer
#

class Checklist < ActiveRecord::Base
  belongs_to :checklist_type
  belongs_to :vehicle
  belongs_to :user
  serialize :properties, Hash

  validate :validate_properties

  after_save :update_current_mileage

  def validate_properties
    checklist_type.fields.each do |field|
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
    if self.properties["Current Mileage"].to_i < Vehicle.find(self.vehicle_id).current_mileage
      errors.add :current_mileage, "inputed cannot be less than previous mileage. \(#{Vehicle.find(self.vehicle_id).current_mileage} miles\)"
    end
  end

  private 

  def update_current_mileage
    miles = self.properties["Current Mileage"].to_i
    if miles > 1
      vehicle = Vehicle.find(self.vehicle_id)
      if vehicle.current_mileage < miles
        vehicle.current_mileage = miles
        vehicle.save
      else
        errors.add :current_mileage, "inputed cannot be less than previous mileage."
      end
    end
  end
end
