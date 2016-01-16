class DefenseCharmType < ElementdataModel
    self.primary_key = "id"
    has_many :defense_charms
end
