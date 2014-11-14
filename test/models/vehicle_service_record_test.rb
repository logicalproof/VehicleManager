# == Schema Information
#
# Table name: vehicle_service_records
#
#  id                           :integer          not null, primary key
#  oil_change_mileage           :integer
#  brake_service_mileage        :integer
#  transmission_service_mileage :integer
#  oil_filter_mileage           :integer
#  air_filter_mileage           :integer
#  battery_mileage              :integer
#  tires_rotated_mileage        :integer
#  oil_change                   :date
#  brake_service                :date
#  transmission_service         :date
#  oil_filter                   :date
#  air_filter                   :date
#  battery                      :date
#  tires_rotated                :date
#  last_inspection_date         :date
#  vehicle_id                   :integer
#  created_at                   :datetime
#  updated_at                   :datetime
#

require 'test_helper'

class VehicleServiceRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
