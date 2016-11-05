module ThreeLittlePigs
  class Water
    BOILING_POINT = 100 # °C
    private_constant :BOILING_POINT

    attr_accessor :temperature

    def initialize
      @temperature = Utilities::ROOM_TEMPERATURE
    end

    def boil
      self.temperature = BOILING_POINT
    end
  end
end
