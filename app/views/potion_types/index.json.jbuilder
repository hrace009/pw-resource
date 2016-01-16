json.array!(@potion_types) do |potion_type|
  json.extract! potion_type, :id
  json.url potion_type_url(potion_type, format: :json)
end
