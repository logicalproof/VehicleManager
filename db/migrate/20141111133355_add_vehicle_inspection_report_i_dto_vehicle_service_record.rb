class AddVehicleInspectionReportIDtoVehicleServiceRecord < ActiveRecord::Migration
  def change
    change_table :vehicle_service_records do |t|

      t.belongs_to :vehicle_inspection_report, index: true

    end
  end
end
