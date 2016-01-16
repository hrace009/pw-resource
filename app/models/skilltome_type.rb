class SkilltomeType < ElementdataModel
    self.primary_key = "id"
    has_many :skilltomes
end
