json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :number, :current_mileage
  json.url vehicle_url(vehicle, format: :json)
end
