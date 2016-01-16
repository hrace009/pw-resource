class Shard < ElementdataModel
    self.primary_key = "id"
    belongs_to :shard_type
end
