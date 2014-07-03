class AddVehicleIdToServiceRecord < ActiveRecord::Migration
  def change
    add_reference :service_records, :vehicle, index: true
  end
end
