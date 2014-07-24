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
#

class Checklist < ActiveRecord::Base
  belongs_to :checklist_type
  belongs_to :vehicle
  belongs_to :user
  serialize :properties, Hash

  validate :validate_properties

  def validate_properties
    checklist_type.fields.each do |field|
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
  end
end
