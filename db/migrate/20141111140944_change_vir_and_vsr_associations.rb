class ChangeVirAndVsrAssociations < ActiveRecord::Migration
  def change
    change_table :vehicle_inspection_reports do |t|

      t.belongs_to :vehicle_service_record, index: true

    end
    remove_column :vehicle_service_records, :vehicle_inspection_report_id
  end
end
