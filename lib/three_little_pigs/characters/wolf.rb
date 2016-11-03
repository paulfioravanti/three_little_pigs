module ThreeLittlePigs
  class Wolf
    HUFF_POWER = 10
    private_constant :HUFF_POWER
    PUFF_POWER = 20
    private_constant :PUFF_POWER
    BLOW_POWER = 40
    private_constant :BLOW_POWER

    def huff(at:)
      power_level = self.class.const_get("#{__callee__.upcase}_POWER")
      at.inflict_damage(power_level)
    end
    alias_method :puff, :huff
    alias_method :blow, :huff
  end
end
