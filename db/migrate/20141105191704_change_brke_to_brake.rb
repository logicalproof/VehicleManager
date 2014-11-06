class ChangeBrkeToBrake < ActiveRecord::Migration
  def change

    add_column :vehicle_inspection_reports, :brake_lights, :boolean
    add_column :vehicle_inspection_reports, :brake_lights_comment, :string
    remove_column :vehicle_inspection_reports, :brke_lights
    remove_column :vehicle_inspection_reports, :brke_lights_comment

  end
end
