module VehiclesHelper

	def current_services(vehicle, services, type)
		current = []
    services.each do |service|
      current << vehicle.vehicle_services.where("service_type_id = #{service}").order(:updated_at).last
    end
    render partial: 'services', locals: { services: current, type: type } 
  end

  def full_service_history(vehicle, type)
    render partial: 'services', locals: { services: vehicle.vehicle_services.all.order('updated_at DESC'), type: type }
  end
    
end

