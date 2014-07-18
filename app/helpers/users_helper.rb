module UsersHelper
	def assigned_vehicles(user)
    if user.vehicles.first
    	v = "|"
    	user.vehicles.each do |vehicle|
    		v += link_to vehicle.number, vehicle_path(vehicle)
        v += "|"
    	end
      	return v.html_safe
    else
      return link_to "None Assigned", new_vehicle_assignment_path(:user_id => user.id)
    end
  end
end