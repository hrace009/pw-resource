class WeaponSubtype < ElementdataModel
    self.primary_key = "id"
    has_many :weapons
end
