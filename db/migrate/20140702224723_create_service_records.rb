class CreateServiceRecords < ActiveRecord::Migration
  def change
    create_table :service_records do |t|

      t.timestamps
    end
  end
end
