class AddVsrFieldsToVir < ActiveRecord::Migration
  def change
    add_column :vehicle_inspection_reports, :battery, :boolean
    add_column :vehicle_inspection_reports, :battery_comment, :string
    add_column :vehicle_inspection_reports, :tires_rotated, :boolean
    add_column :vehicle_inspection_reports, :tires_rotated_comment, :string
  end
end
