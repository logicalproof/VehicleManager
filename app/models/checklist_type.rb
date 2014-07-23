class ChecklistType < ActiveRecord::Base
	has_many :checklists
	has_many :fields, class_name: "ChecklistField"
	accepts_nested_attributes_for :fields, allow_destroy: true
end
