class RemoveTablesNoLongerUsed < ActiveRecord::Migration
  def change
    drop_table :checklist_fields
    drop_table :checklists
    drop_table :service_records
    drop_table :vehicle_services
    drop_table :checklist_types
  end
end
