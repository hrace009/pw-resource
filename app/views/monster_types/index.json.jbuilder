json.array!(@monster_types) do |monster_type|
  json.extract! monster_type, :id
  json.url monster_type_url(monster_type, format: :json)
end
