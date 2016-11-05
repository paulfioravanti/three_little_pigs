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

    def boil
      self.temperature = BOILING_POINT
    end
  end
end
