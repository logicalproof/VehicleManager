# == Schema Information
#
# Table name: weekly_reports
#
#  id           :integer          not null, primary key
#  appearance   :boolean
#  tires        :boolean
#  lights       :boolean
#  mechanical   :boolean
#  electrical   :boolean
#  fluid_levels :boolean
#  mileage      :integer
#  comments     :text
#  created_at   :datetime
#  updated_at   :datetime
#  vehicle_id   :integer
#  user_id      :integer
#

require 'test_helper'

class WeeklyReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
