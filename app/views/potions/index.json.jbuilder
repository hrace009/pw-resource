json.array!(@potions) do |potion|
  json.extract! potion, :id
  json.url potion_url(potion, format: :json)
end
