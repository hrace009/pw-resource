class MonsterType < ElementdataModel
    self.primary_key = "id"
    has_many :monsters
end
