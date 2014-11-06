class AddVehicleIdToVehicleInpsectionReport < ActiveRecord::Migration
  def change
    add_column :vehicle_inspection_reports, :vehicle_id, :string
    add_index :vehicle_inspection_reports, :vehicle_id
    add_column :vehicle_inspection_reports, :user_id, :string
    add_index :vehicle_inspection_reports, :user_id
    add_column :vehicle_inspection_reports, :mileage, :integer
  end
end
