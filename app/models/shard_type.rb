class ShardType < ElementdataModel
    self.primary_key = "id"
    has_many :shards
end
