json.array!(@checked_item_types) do |checked_item_type|
  json.extract! checked_item_type, :id, :name
  json.url checked_item_type_url(checked_item_type, format: :json)
end
