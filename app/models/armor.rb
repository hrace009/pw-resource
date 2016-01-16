class Armor < ElementdataModel
    self.primary_key = "id"
    belongs_to :armor_type
    belongs_to :armor_subtype
end
