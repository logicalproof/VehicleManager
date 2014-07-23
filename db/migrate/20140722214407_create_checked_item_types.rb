class CreateCheckedItemTypes < ActiveRecord::Migration
  def change
    create_table :checked_item_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
