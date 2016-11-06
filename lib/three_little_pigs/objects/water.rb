module ThreeLittlePigs
  class Water
    ROOM_TEMPERATURE = 20 # °C
    private_constant :ROOM_TEMPERATURE
    BOILING_POINT = 100 # °C
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
