class CreateVehicleServiceRecords < ActiveRecord::Migration
  def change
    create_table :vehicle_service_records do |t|
      t.integer :oil_change_mileage
      t.integer :brake_service_mileage
      t.integer :transmission_service_mileage
      t.integer :oil_filter_mileage
      t.integer :air_filter_mileage
      t.integer :battery_mileage
      t.integer :tires_rotated_mileage
      t.date :oil_change
      t.date :brake_service
      t.date :transmission_service
      t.date :oil_filter
      t.date :air_filter
      t.date :battery
      t.date :tires_rotated
      t.date :last_inspection_date
      t.belongs_to :vehicle, index: true

      t.timestamps
    end
  end
end
