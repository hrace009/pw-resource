class Skilltome < ElementdataModel
    self.primary_key = "id"
    belongs_to :skilltome_type
end
