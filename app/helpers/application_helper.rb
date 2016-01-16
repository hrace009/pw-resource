module Classes
    BLADEMASTER = 1
    WIZARD = 2
    PSYCHIC = 4
    VENOMANCER = 8
    BARBARIAN = 16
    ASSASSIN = 32
    ARCHER = 64
    CLERIC = 128
    SEEKER = 256
    MYSTIC = 512
    DUSKBLADE = 1024
    STORMBRINGER = 2048
end

module ApplicationHelper
    def extract_class_bitfield (bitfield)
        return '' if bitfield == 0

        result = ''
        result << 'Blademaster ' if bitfield & Classes::BLADEMASTER > 0
        result << 'Wizard ' if bitfield & Classes::WIZARD > 0
        result << 'Psychic ' if bitfield & Classes::PSYCHIC > 0
        result << 'Venomancer ' if bitfield & Classes::VENOMANCER > 0
        result << 'Barbarian ' if bitfield & Classes::BARBARIAN > 0
        result << 'Assassin ' if bitfield & Classes::ASSASSIN > 0
        result << 'Archer ' if bitfield & Classes::ARCHER > 0
        result << 'Cleric ' if bitfield & Classes::CLERIC > 0
        result << 'Seeker ' if bitfield & Classes::SEEKER > 0
        result << 'Mystic ' if bitfield & Classes::MYSTIC > 0
        result << 'Duskblade ' if bitfield & Classes::DUSKBLADE > 0
        result << 'Stormbringer ' if bitfield & Classes::STORMBRINGER > 0
        result[0...-1]
    end
end