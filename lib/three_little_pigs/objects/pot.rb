module ThreeLittlePigs
  class Pot
    TEMPERATURE_TO_BOIL_WATER = 110 # °C
    private_constant :TEMPERATURE_TO_BOIL_WATER

    attr_accessor :contents, :temperature

    def initialize
      @contents = []
      @temperature = Utilities::ROOM_TEMPERATURE
    end

    def water
      contents.find { |item| item.kind_of?(Water) }
    end

    def raise_temperature
      self.temperature = TEMPERATURE_TO_BOIL_WATER
      contents.each { |item| item.boil }
    end
  end
end
