json.array!(@teleport_incenses) do |teleport_incense|
  json.extract! teleport_incense, :id
  json.url teleport_incense_url(teleport_incense, format: :json)
end
