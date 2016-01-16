json.array!(@armors) do |armor|
  json.extract! armor, :id
  json.url armor_url(armor, format: :json)
end
