class CreateVehicleServices < ActiveRecord::Migration
  def change
    create_table :vehicle_services do |t|
      t.date :date_of_service
      t.integer :mileage_at_service

      t.timestamps
    end
  end
end
