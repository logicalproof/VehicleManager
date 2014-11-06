require 'test_helper'

class VehicleInspectionReportsControllerTest < ActionController::TestCase
  setup do
    @vehicle_inspection_report = vehicle_inspection_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_inspection_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_inspection_report" do
    assert_difference('VehicleInspectionReport.count') do
      post :create, vehicle_inspection_report: { air_conditioner: @vehicle_inspection_report.air_conditioner, air_conditioner_comment: @vehicle_inspection_report.air_conditioner_comment, air_filter: @vehicle_inspection_report.air_filter, air_filter_comment: @vehicle_inspection_report.air_filter_comment, battery_cables: @vehicle_inspection_report.battery_cables, battery_cables_comment: @vehicle_inspection_report.battery_cables_comment, brke_lights: @vehicle_inspection_report.brke_lights, brke_lights_comment: @vehicle_inspection_report.brke_lights_comment, drive_belts: @vehicle_inspection_report.drive_belts, drive_belts_comment: @vehicle_inspection_report.drive_belts_comment, emergency_break_adjustment: @vehicle_inspection_report.emergency_break_adjustment, emergency_break_adjustment_comment: @vehicle_inspection_report.emergency_break_adjustment_comment, exhaust: @vehicle_inspection_report.exhaust, exhaust_comment: @vehicle_inspection_report.exhaust_comment, fuel_filter: @vehicle_inspection_report.fuel_filter, fuel_filter_comment: @vehicle_inspection_report.fuel_filter_comment, headlights: @vehicle_inspection_report.headlights, headlights_comment: @vehicle_inspection_report.headlights_comment, heater_hoses: @vehicle_inspection_report.heater_hoses, heater_hoses_comment: @vehicle_inspection_report.heater_hoses_comment, mirrors: @vehicle_inspection_report.mirrors, mirrors_comment: @vehicle_inspection_report.mirrors_comment, oil_filter: @vehicle_inspection_report.oil_filter, oil_filter_comment: @vehicle_inspection_report.oil_filter_comment, radiator_coolant: @vehicle_inspection_report.radiator_coolant, radiator_coolant_comment: @vehicle_inspection_report.radiator_coolant_comment, radiator_hoses: @vehicle_inspection_report.radiator_hoses, radiator_hoses_comment: @vehicle_inspection_report.radiator_hoses_comment, rear_window: @vehicle_inspection_report.rear_window, rear_window_comment: @vehicle_inspection_report.rear_window_comment, seatbelts: @vehicle_inspection_report.seatbelts, seatbelts_comment: @vehicle_inspection_report.seatbelts_comment, side_windows: @vehicle_inspection_report.side_windows, side_windows_comment: @vehicle_inspection_report.side_windows_comment, spark_plug_wires: @vehicle_inspection_report.spark_plug_wires, spark_plug_wires_comment: @vehicle_inspection_report.spark_plug_wires_comment, tail_lights: @vehicle_inspection_report.tail_lights, tail_lights_comment: @vehicle_inspection_report.tail_lights_comment, tire_wear: @vehicle_inspection_report.tire_wear, tire_wear_comment: @vehicle_inspection_report.tire_wear_comment, turn_signals: @vehicle_inspection_report.turn_signals, turn_signals_comment: @vehicle_inspection_report.turn_signals_comment, windshield: @vehicle_inspection_report.windshield, windshield_comment: @vehicle_inspection_report.windshield_comment, wiper_blades: @vehicle_inspection_report.wiper_blades, wiper_blades_comment: @vehicle_inspection_report.wiper_blades_comment }
    end

    assert_redirected_to vehicle_inspection_report_path(assigns(:vehicle_inspection_report))
  end

  test "should show vehicle_inspection_report" do
    get :show, id: @vehicle_inspection_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_inspection_report
    assert_response :success
  end

  test "should update vehicle_inspection_report" do
    patch :update, id: @vehicle_inspection_report, vehicle_inspection_report: { air_conditioner: @vehicle_inspection_report.air_conditioner, air_conditioner_comment: @vehicle_inspection_report.air_conditioner_comment, air_filter: @vehicle_inspection_report.air_filter, air_filter_comment: @vehicle_inspection_report.air_filter_comment, battery_cables: @vehicle_inspection_report.battery_cables, battery_cables_comment: @vehicle_inspection_report.battery_cables_comment, brke_lights: @vehicle_inspection_report.brke_lights, brke_lights_comment: @vehicle_inspection_report.brke_lights_comment, drive_belts: @vehicle_inspection_report.drive_belts, drive_belts_comment: @vehicle_inspection_report.drive_belts_comment, emergency_break_adjustment: @vehicle_inspection_report.emergency_break_adjustment, emergency_break_adjustment_comment: @vehicle_inspection_report.emergency_break_adjustment_comment, exhaust: @vehicle_inspection_report.exhaust, exhaust_comment: @vehicle_inspection_report.exhaust_comment, fuel_filter: @vehicle_inspection_report.fuel_filter, fuel_filter_comment: @vehicle_inspection_report.fuel_filter_comment, headlights: @vehicle_inspection_report.headlights, headlights_comment: @vehicle_inspection_report.headlights_comment, heater_hoses: @vehicle_inspection_report.heater_hoses, heater_hoses_comment: @vehicle_inspection_report.heater_hoses_comment, mirrors: @vehicle_inspection_report.mirrors, mirrors_comment: @vehicle_inspection_report.mirrors_comment, oil_filter: @vehicle_inspection_report.oil_filter, oil_filter_comment: @vehicle_inspection_report.oil_filter_comment, radiator_coolant: @vehicle_inspection_report.radiator_coolant, radiator_coolant_comment: @vehicle_inspection_report.radiator_coolant_comment, radiator_hoses: @vehicle_inspection_report.radiator_hoses, radiator_hoses_comment: @vehicle_inspection_report.radiator_hoses_comment, rear_window: @vehicle_inspection_report.rear_window, rear_window_comment: @vehicle_inspection_report.rear_window_comment, seatbelts: @vehicle_inspection_report.seatbelts, seatbelts_comment: @vehicle_inspection_report.seatbelts_comment, side_windows: @vehicle_inspection_report.side_windows, side_windows_comment: @vehicle_inspection_report.side_windows_comment, spark_plug_wires: @vehicle_inspection_report.spark_plug_wires, spark_plug_wires_comment: @vehicle_inspection_report.spark_plug_wires_comment, tail_lights: @vehicle_inspection_report.tail_lights, tail_lights_comment: @vehicle_inspection_report.tail_lights_comment, tire_wear: @vehicle_inspection_report.tire_wear, tire_wear_comment: @vehicle_inspection_report.tire_wear_comment, turn_signals: @vehicle_inspection_report.turn_signals, turn_signals_comment: @vehicle_inspection_report.turn_signals_comment, windshield: @vehicle_inspection_report.windshield, windshield_comment: @vehicle_inspection_report.windshield_comment, wiper_blades: @vehicle_inspection_report.wiper_blades, wiper_blades_comment: @vehicle_inspection_report.wiper_blades_comment }
    assert_redirected_to vehicle_inspection_report_path(assigns(:vehicle_inspection_report))
  end

  test "should destroy vehicle_inspection_report" do
    assert_difference('VehicleInspectionReport.count', -1) do
      delete :destroy, id: @vehicle_inspection_report
    end

    assert_redirected_to vehicle_inspection_reports_path
  end
end
