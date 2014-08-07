# == Schema Information
#
# Table name: mileages
#
#  id         :integer          not null, primary key
#  miles      :integer
#  vehicle_id :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class MileageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
