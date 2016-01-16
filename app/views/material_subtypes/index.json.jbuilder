json.array!(@material_subtypes) do |material_subtype|
  json.extract! material_subtype, :id
  json.url material_subtype_url(material_subtype, format: :json)
end
