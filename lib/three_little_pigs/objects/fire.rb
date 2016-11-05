module ThreeLittlePigs
  class Fire
    attr_accessor :temperature

    def initialize
      # Average temperature of a wood fire
      @temperature = 400 # °C
    end

    def raise_temperature_of(objects)
      objects.each { |object| object.raise_temperature }
    end
  end
end
