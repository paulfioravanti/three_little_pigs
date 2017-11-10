# frozen_string_literal: true

module ThreeLittlePigs
  class Wolf
    HUFF_POWER = 10
    private_constant :HUFF_POWER
    PUFF_POWER = 20
    private_constant :PUFF_POWER

    attr_reader :slug

    def initialize(slug:)
      @slug = slug
    end

    def huff(at:)
      power_level = self.class.const_get("#{__callee__.upcase}_POWER")
      at.inflict_damage(power_level)
    end
    alias puff huff

    def enter(location)
      location << self
    end
  end
end
