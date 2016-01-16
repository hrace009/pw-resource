json.array!(@projectile_types) do |projectile_type|
  json.extract! projectile_type, :id
  json.url projectile_type_url(projectile_type, format: :json)
end
