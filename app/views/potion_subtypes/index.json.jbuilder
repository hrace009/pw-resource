json.array!(@potion_subtypes) do |potion_subtype|
  json.extract! potion_subtype, :id
  json.url potion_subtype_url(potion_subtype, format: :json)
end
