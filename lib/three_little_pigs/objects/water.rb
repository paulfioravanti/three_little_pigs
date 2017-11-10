# frozen_string_literal: true

module ThreeLittlePigs
  class Water
    # Values in degrees celsius
    ROOM_TEMPERATURE = 20
    private_constant :ROOM_TEMPERATURE
    BOILING_POINT = 100
    private_constant :BOILING_POINT

    attr_accessor :temperature

    def initialize
      @temperature = ROOM_TEMPERATURE
    end

    def raise_temperature
      self.temperature = BOILING_POINT
    end

    def boiling?
      temperature == BOILING_POINT
    end
  end
end
