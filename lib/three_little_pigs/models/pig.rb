module ThreeLittlePigs
  class Pig
    attr_reader :children, :wealth
    attr_accessor :inventory

    def initialize(inventory: [], children: [], wealth: Wealth.level(:none))
      @inventory = inventory
      @children = children
      @wealth = wealth
    end
  end
end
