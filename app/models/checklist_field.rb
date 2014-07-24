# == Schema Information
#
# Table name: checklist_fields
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  field_type        :string(255)
#  required          :boolean
#  checklist_type_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class ChecklistField < ActiveRecord::Base
  belongs_to :checklist_type
  
end
