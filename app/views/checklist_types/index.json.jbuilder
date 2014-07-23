json.array!(@checklist_types) do |checklist_type|
  json.extract! checklist_type, :id, :name
  json.url checklist_type_url(checklist_type, format: :json)
end
