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

	def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def underscore(partial_name)
    partial_name.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    downcase
  end

  def return_if_exists(obj, method)
    if obj
      return obj.send(method)
    else
      "No #{method.to_s}"
    end
  end
end
