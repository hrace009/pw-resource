class Weapon < ElementdataModel
    belongs_to :weapon_subtype
    belongs_to :weapon_type
    belongs_to :refine_addon, foreign_key: "refine_addon", :class_name => 'EquipmentAddon'
    belongs_to :projectile_type
end
