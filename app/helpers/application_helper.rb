module ApplicationHelper

	def service_list
		services = ServiceType.all
		service_list = []
		if services.empty?
		else
			services.each do |service|
				service_list << service.id
			end
		end
		return service_list
	end
end
