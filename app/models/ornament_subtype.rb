class OrnamentSubtype < ElementdataModel
    self.primary_key = "id"
    has_many :ornaments
end
