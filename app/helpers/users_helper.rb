module UsersHelper
	def assigned_vehicles(user)
    if user.vehicles.first
    	v = ""
    	user.vehicles.each do |vehicle|
    		v += vehicle.number + " "
    	end
      	return v
    else
      return "None Assigned"
    end
  end
end