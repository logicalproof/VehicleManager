class CreateVehicleServiceRecords < ActiveRecord::Migration
  def change
    create_table :vehicle_service_records do |t|
      t.integer :oil_change_mileage, :default => 0
      t.integer :brake_service_mileage, :default => 0
      t.integer :transmission_service_mileage, :default => 0
      t.integer :oil_filter_mileage, :default => 0
      t.integer :air_filter_mileage, :default => 0
      t.integer :battery_mileage, :default => 0
      t.integer :tires_rotated_mileage, :default => 0
      t.date :oil_change, :default => DateTime.current
      t.date :brake_service, :default => DateTime.current
      t.date :transmission_service, :default => DateTime.current
      t.date :oil_filter, :default => DateTime.current
      t.date :air_filter, :default => DateTime.current
      t.date :battery, :default => DateTime.current
      t.date :tires_rotated, :default => DateTime.current
      t.date :last_inspection_date, :default => DateTime.current
      t.belongs_to :vehicle, index: true

      t.timestamps
    end
  end
end
