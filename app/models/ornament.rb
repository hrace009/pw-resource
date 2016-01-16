class Ornament < ElementdataModel
    self.primary_key = "id"
    belongs_to :ornament_type
    belongs_to :ornament_subtype
end
