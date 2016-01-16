class QuiverType < ElementdataModel
    self.primary_key = "id"
    has_many :quivers
end
