json.array!(@vehicle_assignments) do |vehicle_assignment|
  json.extract! vehicle_assignment, :id, :user_id, :vehicle_id
  json.url vehicle_assignment_url(vehicle_assignment, format: :json)
end