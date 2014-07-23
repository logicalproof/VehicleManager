class CreateChecklistTypes < ActiveRecord::Migration
  def change
    create_table :checklist_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
