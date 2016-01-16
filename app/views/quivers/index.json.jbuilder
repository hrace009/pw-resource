json.array!(@quivers) do |quiver|
  json.extract! quiver, :id
  json.url quiver_url(quiver, format: :json)
end
