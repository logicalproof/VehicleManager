class ChangeFieldsInVehicleInspectionReportToMatchVehicleServiceRecord < ActiveRecord::Migration
  def change
    add_column :vehicle_inspection_reports, :oil_change, :boolean
    add_column :vehicle_inspection_reports, :oil_change_comments, :string
    add_column :vehicle_inspection_reports, :transmission_service, :boolean
    add_column :vehicle_inspection_reports, :transmission_comments, :string
    add_column :vehicle_inspection_reports, :brake_service, :boolean
    add_column :vehicle_inspection_reports, :brake_service_comments, :string


    remove_column :vehicle_inspection_reports, :engine_oil
    remove_column :vehicle_inspection_reports, :engine_oil_comments
    remove_column :vehicle_inspection_reports, :transmission_fluid
    remove_column :vehicle_inspection_reports, :transmission_fluid_comments
    remove_column :vehicle_inspection_reports, :brake_hydraulic_system
    remove_column :vehicle_inspection_reports, :brake_hydraulic_system_comments

  end
end
