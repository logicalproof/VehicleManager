class AddPlateToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :plate_number, :string
    add_column :vehicles, :gross_weight, :string
    add_column :vehicles, :vin_number, :string
  end
end
