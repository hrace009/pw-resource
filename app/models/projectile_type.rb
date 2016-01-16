class ProjectileType < ElementdataModel
    self.primary_key = "id"
    has_many :projectiles
end
