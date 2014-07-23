class CreateCheckedItemFields < ActiveRecord::Migration
  def change
    create_table :checked_item_fields do |t|
      t.string :name
      t.string :field_type
      t.boolean :required
      t.belongs_to :checked_item_type, index: true

      t.timestamps
    end
  end
end
