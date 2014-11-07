class AddOilChangeToVehicleInspectionReports < ActiveRecord::Migration
  def change
    add_column :vehicle_inspection_reports, :engine_oil, :boolean
    add_column :vehicle_inspection_reports, :engine_oil_comments, :string
    add_column :vehicle_inspection_reports, :transmission_fluid, :boolean
    add_column :vehicle_inspection_reports, :transmission_fluid_comments, :string
    add_column :vehicle_inspection_reports, :brake_hydraulic_system, :boolean
    add_column :vehicle_inspection_reports, :brake_hydraulic_system_comments, :string
  end
end
