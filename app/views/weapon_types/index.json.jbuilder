json.array!(@weapon_types) do |weapon_type|
  json.extract! weapon_type, :id
  json.url weapon_type_url(weapon_type, format: :json)
end
