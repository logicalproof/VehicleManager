class AddServiceRecordIdToVehicleService < ActiveRecord::Migration
  def change
  	add_reference :vehicle_services, :service_record
  	add_reference :vehicle_services, :service_type
  end
end
