class CreateMileages < ActiveRecord::Migration
  def change
    create_table :mileages do |t|
      t.integer :miles
      t.references :vehicle, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
