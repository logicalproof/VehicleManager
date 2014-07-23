class CreateChecklistFields < ActiveRecord::Migration
  def change
    create_table :checklist_fields do |t|
      t.string :name
      t.string :field_type
      t.boolean :required
      t.belongs_to :checklist_type, index: true

      t.timestamps
    end
  end
end
