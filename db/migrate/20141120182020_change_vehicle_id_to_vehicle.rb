class ChangeVehicleIdToVehicle < ActiveRecord::Migration
  def change
    change_table :weekly_reports do |t|
      t.remove :user_id_id, :vehicle_id_id
      t.belongs_to :vehicle, index: true
      t.belongs_to :user, index: true
    end
  end
end
