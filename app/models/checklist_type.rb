# == Schema Information
#
# Table name: checklist_types
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  vehicle_report :boolean
#

class ChecklistType < ActiveRecord::Base
	has_many :checklists
	has_many :fields, class_name: "ChecklistField"
	accepts_nested_attributes_for :fields, allow_destroy: true
  after_create :report_for_vehicle


  private 

	def report_for_vehicle
	  if self.vehicle_report?
	    self.fields.build(field_type: "current_mileage", name: "Current Mileage", required: 1).save
	  end
	end
end
