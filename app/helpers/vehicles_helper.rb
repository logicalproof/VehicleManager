module VehiclesHelper

	def current_services(vehicle, services)
		current = []
    services.each do |service|
      current << vehicle.vehicle_services.where("service_type_id = #{service}").order(:created_at).last
    end
    render partial: 'services', locals: { services: current, title: "Current Services" } 
  end

  def full_service_history(vehicle)
    render partial: 'services', locals: { services: vehicle.vehicle_services.all.order('date_of_service DESC'), title: "Full Service History" }
  end

  def show_service_buttons
    service_types = ServiceType.all
    render partial: 'service_buttons', locals: {service_types: service_types}
  end

  def assigned_driver(vehicle)
    if vehicle.user
      return vehicle.user.email
    else
      return "None Assigned"
    end
  end
    
end

