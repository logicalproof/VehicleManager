class AddVehicleIdAndUserIdToChecklists < ActiveRecord::Migration
  def change
    change_table :checklists do |t|
      t.references :user, index: true
      t.references :vehicle, index: true

    end
  end
end
