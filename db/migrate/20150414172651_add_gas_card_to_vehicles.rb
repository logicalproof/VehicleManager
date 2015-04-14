class AddGasCardToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :gas_card, :string
  end
end
