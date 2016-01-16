json.array!(@projectiles) do |projectile|
  json.extract! projectile, :id
  json.url projectile_url(projectile, format: :json)
end
