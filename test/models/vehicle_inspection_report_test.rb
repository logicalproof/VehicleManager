# == Schema Information
#
# Table name: vehicle_inspection_reports
#
#  id                                 :integer          not null, primary key
#  tire_wear                          :boolean
#  tire_wear_comment                  :string(255)
#  exhaust                            :boolean
#  drive_belts                        :boolean
#  radiator_coolant                   :boolean
#  radiator_hoses                     :boolean
#  heater_hoses                       :boolean
#  battery_cables                     :boolean
#  spark_plug_wires                   :boolean
#  oil_filter                         :boolean
#  air_filter                         :boolean
#  fuel_filter                        :boolean
#  wiper_blades                       :boolean
#  headlights                         :boolean
#  tail_lights                        :boolean
#  turn_signals                       :boolean
#  air_conditioner                    :boolean
#  seatbelts                          :boolean
#  mirrors                            :boolean
#  windshield                         :boolean
#  rear_window                        :boolean
#  side_windows                       :boolean
#  exhaust_comment                    :string(255)
#  drive_belts_comment                :string(255)
#  radiator_coolant_comment           :string(255)
#  radiator_hoses_comment             :string(255)
#  heater_hoses_comment               :string(255)
#  battery_cables_comment             :string(255)
#  spark_plug_wires_comment           :string(255)
#  oil_filter_comment                 :string(255)
#  air_filter_comment                 :string(255)
#  fuel_filter_comment                :string(255)
#  wiper_blades_comment               :string(255)
#  headlights_comment                 :string(255)
#  tail_lights_comment                :string(255)
#  turn_signals_comment               :string(255)
#  air_conditioner_comment            :string(255)
#  seatbelts_comment                  :string(255)
#  mirrors_comment                    :string(255)
#  windshield_comment                 :string(255)
#  rear_window_comment                :string(255)
#  side_windows_comment               :string(255)
#  created_at                         :datetime
#  updated_at                         :datetime
#  brake_lights                       :boolean
#  brake_lights_comment               :string(255)
#  emergency_brake_adjustment         :boolean
#  emergency_brake_adjustment_comment :string(255)
#  user_id                            :string(255)
#  mileage                            :integer          default(0)
#  vehicle_service_record_id          :integer
#  oil_change                         :boolean
#  oil_change_comments                :string(255)
#  transmission_service               :boolean
#  brake_service                      :boolean
#  brake_service_comments             :string(255)
#  transmission_service_comments      :string(255)
#  battery                            :boolean
#  battery_comment                    :string(255)
#  tires_rotated                      :boolean
#  tires_rotated_comment              :string(255)
#

require 'test_helper'

class VehicleInspectionReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
