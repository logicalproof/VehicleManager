class AddSyntheticToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :synthetic, :boolean, :default => false
  end
end
