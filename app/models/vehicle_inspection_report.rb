class VehicleInspectionReport < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :user
  after_create :update_mileage_from_service

  def update_mileage_from_service
    vehicle = self.vehicle #Vehicle.find(ServiceRecord.find(service_record_id).vehicle_id)
    if vehicle.current_mileage < self.mileage
      vehicle.current_mileage = self.mileage
      vehicle.user_id = self.user_id
      vehicle.save
    else
      errors.add :current_mileage, "inputed cannot be less than previous mileage."
    end
  end


end
