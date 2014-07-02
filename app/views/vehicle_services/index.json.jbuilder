json.array!(@vehicle_services) do |vehicle_service|
  json.extract! vehicle_service, :id, :date_of_service, :mileage_at_service
  json.url vehicle_service_url(vehicle_service, format: :json)
end
