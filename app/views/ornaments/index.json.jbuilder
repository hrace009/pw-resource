json.array!(@ornaments) do |ornament|
  json.extract! ornament, :id
  json.url ornament_url(ornament, format: :json)
end
