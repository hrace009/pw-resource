class PotionSubtype < ElementdataModel
    self.primary_key = "id"
    has_many :potions
end
