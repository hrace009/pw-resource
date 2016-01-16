json.array!(@shard_types) do |shard_type|
  json.extract! shard_type, :id
  json.url shard_type_url(shard_type, format: :json)
end
