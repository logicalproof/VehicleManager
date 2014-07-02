class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.string :name
      t.integer :mileage_interval
      t.integer :month_interval

      t.timestamps
    end
  end
end
