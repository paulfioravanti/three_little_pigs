module ThreeLittlePigs
  Straw = Struct.new(:strength) do
    def initialize
      self.strength = 1
    end
  end

  Stick = Struct.new(:strength) do
    def initialize
      self.strength = 5
    end
  end

  Brick = Struct.new(:strength) do
    def initialize
      self.strength = 10
    end
  end
end
