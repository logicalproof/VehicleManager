class RemoveVehicleIdFromVehicleInspectionReport < ActiveRecord::Migration
  def change
    remove_column :vehicle_inspection_reports, :vehicle_id
  end
end
