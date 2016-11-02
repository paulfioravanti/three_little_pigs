module ThreeLittlePigs
  class Wolf
    HUFF_POWER = 5
    private_constant :HUFF_POWER
    PUFF_POWER = 10
    private_constant :PUFF_POWER
    BLOW_POWER = 15
    private_constant :BLOW_POWER

    def huff(at:)
      at.inflict_damage(HUFF_POWER)
    end

    def puff(at:)
      at.inflict_damage(PUFF_POWER)
    end

    def blow(at:)
      at.inflict_damage(BLOW_POWER)
    end
  end
end
