json.array!(@weapons) do |weapon|
  json.extract! weapon, :id
  json.url weapon_url(weapon, format: :json)
end
