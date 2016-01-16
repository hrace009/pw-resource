class Monster < ElementdataModel
    self.primary_key = "id"
    belongs_to :monster_type
end
