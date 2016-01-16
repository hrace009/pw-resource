class Quiver < ElementdataModel
    self.primary_key = "id"
    belongs_to :quiver_type
end
