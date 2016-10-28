module ThreeLittlePigs
  class Pig
    attr_reader :children, :income
    attr_accessor :inventory

    def initialize(inventory: [], children: [], income: Income.level(:none))
      @inventory = inventory
      @children = children
      @income = income
    end
  end
end
