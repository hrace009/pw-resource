json.array!(@shards) do |shard|
  json.extract! shard, :id
  json.url shard_url(shard, format: :json)
end
