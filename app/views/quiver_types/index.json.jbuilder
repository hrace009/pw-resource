json.array!(@quiver_types) do |quiver_type|
  json.extract! quiver_type, :id
  json.url quiver_type_url(quiver_type, format: :json)
end
