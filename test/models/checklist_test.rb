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

require 'test_helper'

class ChecklistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
