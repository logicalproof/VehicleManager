class AddVehicleReportToChecklistTypes < ActiveRecord::Migration
  def change
    add_column :checklist_types, :vehicle_report, :boolean
  end
end
