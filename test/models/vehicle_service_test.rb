# == Schema Information
#
# Table name: vehicle_services
#
#  id                 :integer          not null, primary key
#  date_of_service    :date
#  mileage_at_service :integer
#  created_at         :datetime
#  updated_at         :datetime
#  service_record_id  :integer
#  service_type_id    :integer
#  notes              :text
#

require 'test_helper'

class VehicleServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
