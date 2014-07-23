class AddChecklistTypeToChecklists < ActiveRecord::Migration
  def change
    add_column :checklists, :checklist_type_id, :integer
    add_column :checklists, :properties, :text
  end
end
