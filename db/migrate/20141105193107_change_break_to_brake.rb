class ChangeBreakToBrake < ActiveRecord::Migration
  def change
    add_column :vehicle_inspection_reports, :emergency_brake_adjustment, :boolean
    add_column :vehicle_inspection_reports, :emergency_brake_adjustment_comment, :string
    remove_column :vehicle_inspection_reports, :emergency_break_adjustment
    remove_column :vehicle_inspection_reports, :emergency_break_adjustment_comment
  end
end
