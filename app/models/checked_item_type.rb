class CheckedItemType < ActiveRecord::Base
	has_many :checklists
	has_many :fields, class_name: "CheckedItemField"
	accepts_nested_attributes_for :fields, allow_destroy: true
end
