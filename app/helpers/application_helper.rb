module ApplicationHelper

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

  def translate_service(service)
    case service
    when :oil_change
      return "Oil Change"
    when :oil_filter
      return "Oil Filter"
    when :transmission_service
      return "Transmission Service"
    when :air_filter
      return "Air Filter"
    when :brake_service
      return "Brake Service"
    when :battery
      return "Battery"
    when :tires_rotated
      return "Tires Rotated"
    else
      return "N/A"
    end
  end
end
