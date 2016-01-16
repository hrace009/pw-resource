class AttackCharm < ElementdataModel
    self.primary_key = "id"
    belongs_to :attack_charm_type
end
