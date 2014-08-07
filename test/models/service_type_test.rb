# == Schema Information
#
# Table name: service_types
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  mileage_interval :integer
#  month_interval   :integer
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class ServiceTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
