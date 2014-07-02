class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :number
      t.integer :current_mileage

      t.timestamps
    end
  end
end
