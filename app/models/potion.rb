class Potion < ElementdataModel
    self.primary_key = "id"
    belongs_to :potion_type
    belongs_to :potion_subtype
end
