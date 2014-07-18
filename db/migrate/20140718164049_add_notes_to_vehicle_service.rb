class AddNotesToVehicleService < ActiveRecord::Migration
  def change
    add_column :vehicle_services, :notes, :text
  end
end
