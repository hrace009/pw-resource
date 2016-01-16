class ArmorSubtype < ElementdataModel
    self.primary_key = "id"
    has_many :armors
end
