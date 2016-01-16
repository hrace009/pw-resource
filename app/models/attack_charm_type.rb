class AttackCharmType < ElementdataModel
    self.primary_key = "id"
    has_many :attack_charms
end
