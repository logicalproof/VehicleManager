class CreateVehicleInspectionReports < ActiveRecord::Migration
  def change
    create_table :vehicle_inspection_reports do |t|
      t.boolean :tire_wear
      t.string :tire_wear_comment
      t.boolean :emergency_break_adjustment
      t.string :emergency_break_adjustment_comment
      t.boolean :exhaust
      t.boolean :drive_belts
      t.boolean :radiator_coolant
      t.boolean :radiator_hoses
      t.boolean :heater_hoses
      t.boolean :battery_cables
      t.boolean :spark_plug_wires
      t.boolean :oil_filter
      t.boolean :air_filter
      t.boolean :fuel_filter
      t.boolean :wiper_blades
      t.boolean :headlights
      t.boolean :brke_lights
      t.boolean :tail_lights
      t.boolean :turn_signals
      t.boolean :air_conditioner
      t.boolean :seatbelts
      t.boolean :mirrors
      t.boolean :windshield
      t.boolean :rear_window
      t.boolean :side_windows
      t.string :exhaust_comment
      t.string :drive_belts_comment
      t.string :radiator_coolant_comment
      t.string :radiator_hoses_comment
      t.string :heater_hoses_comment
      t.string :battery_cables_comment
      t.string :spark_plug_wires_comment
      t.string :oil_filter_comment
      t.string :air_filter_comment
      t.string :fuel_filter_comment
      t.string :wiper_blades_comment
      t.string :headlights_comment
      t.string :brke_lights_comment
      t.string :tail_lights_comment
      t.string :turn_signals_comment
      t.string :air_conditioner_comment
      t.string :seatbelts_comment
      t.string :mirrors_comment
      t.string :windshield_comment
      t.string :rear_window_comment
      t.string :side_windows_comment

      t.timestamps
    end
  end
end
