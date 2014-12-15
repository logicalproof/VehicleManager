class AddDefaultValueToVehicleInspectionRecord < ActiveRecord::Migration
  def change
    change_column_default(:vehicle_inspection_reports, :mileage, 0)
  end
end
