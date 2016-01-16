json.array!(@armor_subtypes) do |armor_subtype|
  json.extract! armor_subtype, :id
  json.url armor_subtype_url(armor_subtype, format: :json)
end
