json.array!(@quest_items) do |quest_item|
  json.extract! quest_item, :id
  json.url quest_item_url(quest_item, format: :json)
end
