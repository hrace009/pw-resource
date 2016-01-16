class DefenseCharm < ElementdataModel
    self.primary_key = "id"
    belongs_to :defense_charm_type
end
