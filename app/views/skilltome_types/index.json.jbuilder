json.array!(@skilltome_types) do |skilltome_type|
  json.extract! skilltome_type, :id
  json.url skilltome_type_url(skilltome_type, format: :json)
end
