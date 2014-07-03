class AddServiceRecordIdToVehicleService < ActiveRecord::Migration
  def change
  	add_reference :vehicle_services, :service_record, index: true
  	add_reference :vehicle_services, :service_type, index: true
  end
end
