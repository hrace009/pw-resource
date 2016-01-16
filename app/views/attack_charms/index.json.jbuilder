json.array!(@attack_charms) do |attack_charm|
  json.extract! attack_charm, :id
  json.url attack_charm_url(attack_charm, format: :json)
end
