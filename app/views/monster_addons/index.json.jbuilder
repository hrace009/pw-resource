json.array!(@monster_addons) do |monster_addon|
  json.extract! monster_addon, :id
  json.url monster_addon_url(monster_addon, format: :json)
end
