class UpdateMileagesAttributesWithNotNull < ActiveRecord::Migration
  def change
  	change_column :mileages, :user_id, :integer, null: false
  	change_column :mileages, :vehicle_id, :integer, null: false
  end
end
