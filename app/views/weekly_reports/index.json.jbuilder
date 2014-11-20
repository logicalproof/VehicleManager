json.array!(@weekly_reports) do |weekly_report|
  json.extract! weekly_report, :id, :appearance, :tires, :lights, :mechanical, :electrical, :fluid_levels, :mileage, :user_id, :vehicle_id, :comments
  json.url weekly_report_url(weekly_report, format: :json)
end
