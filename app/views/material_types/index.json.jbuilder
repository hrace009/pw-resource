json.array!(@material_types) do |material_type|
  json.extract! material_type, :id
  json.url material_type_url(material_type, format: :json)
end
