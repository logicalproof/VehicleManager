class Checklist < ActiveRecord::Base
  belongs_to :checklist_type
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
