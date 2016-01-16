json.array!(@defense_charm_types) do |defense_charm_type|
  json.extract! defense_charm_type, :id
  json.url defense_charm_type_url(defense_charm_type, format: :json)
end
