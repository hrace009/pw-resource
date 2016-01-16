class Projectile < ElementdataModel
    self.primary_key = "id"
    belongs_to :projectile_type
end
