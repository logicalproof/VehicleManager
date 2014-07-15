class AddingInfoToVehicle < ActiveRecord::Migration
  def change
  	add_column :vehicles, :make, :string
  	add_column :vehicles, :model, :string
  	add_column :vehicles, :year, :string
  	add_column :vehicles, :purchase_date, :date
  	add_column :vehicles, :sold, :boolean, null: true
  	add_column :vehicles, :sold_date, :date, null: true
  end
end
