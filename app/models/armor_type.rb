class ArmorType < ElementdataModel
    self.primary_key = "id"
    has_many :armors
end
