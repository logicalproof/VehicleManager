# == Schema Information
#
# Table name: checklist_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class ChecklistType < ActiveRecord::Base
	has_many :checklists
	has_many :fields, class_name: "ChecklistField"
	accepts_nested_attributes_for :fields, allow_destroy: true
end
