class Material < ElementdataModel
    self.primary_key = "id"
    belongs_to :material_type
    belongs_to :material_subtype
end
