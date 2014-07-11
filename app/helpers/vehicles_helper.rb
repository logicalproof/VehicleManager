module VehiclesHelper

	def current_services(vehicle, services)
		current = []
    services.each do |service|
      current << vehicle.vehicle_services.where("service_type_id = #{service}").order(:updated_at).last
    end
    render partial: 'current_services', locals: { services: current }
    
  end
    
end

