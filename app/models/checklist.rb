class Checklist < ActiveRecord::Base
  belongs_to :checked_item_type
  serialize :properties, Hash

  validate :validate_properties

  def validate_properties
    checked_item_type.fields.each do |field|
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
  end
end
