class AddCheckedItemTypeToChecklists < ActiveRecord::Migration
  def change
    add_column :checklists, :checked_item_type_id, :integer
    add_column :checklists, :properties, :text
  end
end
