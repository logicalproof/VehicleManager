class CreateWeeklyReports < ActiveRecord::Migration
  def change
    create_table :weekly_reports do |t|
      t.boolean :appearance
      t.boolean :tires
      t.boolean :lights
      t.boolean :mechanical
      t.boolean :electrical
      t.boolean :fluid_levels
      t.integer :mileage
      t.belongs_to :user_id, index: true
      t.belongs_to :vehicle_id, index: true
      t.text :comments

      t.timestamps
    end
  end
end
