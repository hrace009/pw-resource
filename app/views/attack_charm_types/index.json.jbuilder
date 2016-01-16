json.array!(@attack_charm_types) do |attack_charm_type|
  json.extract! attack_charm_type, :id
  json.url attack_charm_type_url(attack_charm_type, format: :json)
end
