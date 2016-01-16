json.array!(@ornament_types) do |ornament_type|
  json.extract! ornament_type, :id
  json.url ornament_type_url(ornament_type, format: :json)
end
