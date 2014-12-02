module VehiclesHelper

	# def current_services(vehicle, services)
	# 	current = []
 #    services.each do |service|
 #      current << vehicle.vehicle_services.where("service_type_id = #{service}").order(:created_at).last
 #    end
 #    render partial: 'services', locals: { services: current, title: "Current Services" } 
 #  end

 #  def full_service_history(vehicle)
 #    render partial: 'services', locals: { services: vehicle.vehicle_services.all.order('date_of_service DESC'), title: "Full Service History" }
 #  end

 #  def due_service?(service)
 #    mileage_due = service.mileage_at_service + service.service_type.mileage_interval
 #    due_date = service.date_of_service + service.service_type.month_interval.months
 #    miles = @vehicle.current_mileage
 #    if miles > (mileage_due)
 #      return true
 #    elsif 15.minutes.ago > (due_date)
 #      return true
 #    elsif miles > (mileage_due - 200)
 #      return true
 #    elsif 15.minutes.ago > (due_date - 10.days)
 #      return true
 #    else
 #      return false
 #    end
 #  end


  def assigned_driver(vehicle)
    if vehicle.user
      if can? :manage, VehicleAssignment
        return link_to vehicle.user.email, vehicle.vehicle_assignment, method: :delete, data: { confirm: 'Are you sure you want to remove this driver?' }
      else
        return vehicle.user.email
      end
    else
      return link_to "None Assigned", new_vehicle_assignment_path(:vehicle_id => vehicle.id)
    end
  end
    
end

