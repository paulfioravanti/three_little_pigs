module ThreeLittlePigs
  Straw = Struct.new(:strength) do
    def initialize(strength = 1)
      super
    end
  end

  Stick = Struct.new(:strength) do
    def initialize(strength = 5)
      super
    end
  end

  Brick = Struct.new(:strength) do
    def initialize(strength = 10)
      super
    end
  end
end
