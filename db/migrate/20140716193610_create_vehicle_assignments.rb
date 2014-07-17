class CreateVehicleAssignments < ActiveRecord::Migration
  def change
    create_table :vehicle_assignments do |t|
      t.references :user, index: true
      t.references :vehicle, index: true

      t.timestamps
    end
  end
end
