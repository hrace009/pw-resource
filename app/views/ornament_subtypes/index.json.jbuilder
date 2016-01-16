json.array!(@ornament_subtypes) do |ornament_subtype|
  json.extract! ornament_subtype, :id
  json.url ornament_subtype_url(ornament_subtype, format: :json)
end
