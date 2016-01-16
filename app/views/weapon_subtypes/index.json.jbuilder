json.array!(@weapon_subtypes) do |weapon_subtype|
  json.extract! weapon_subtype, :id
  json.url weapon_subtype_url(weapon_subtype, format: :json)
end
