# == Schema Information
#
# Table name: vehicles
#
#  id              :integer          not null, primary key
#  number          :string(255)
#  current_mileage :integer
#  created_at      :datetime
#  updated_at      :datetime
#  make            :string(255)
#  model           :string(255)
#  year            :string(255)
#  purchase_date   :date
#  sold            :boolean
#  sold_date       :date
#

require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
