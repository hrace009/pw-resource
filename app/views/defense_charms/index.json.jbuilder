json.array!(@defense_charms) do |defense_charm|
  json.extract! defense_charm, :id
  json.url defense_charm_url(defense_charm, format: :json)
end
