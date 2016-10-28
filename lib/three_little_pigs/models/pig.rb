module ThreeLittlePigs
  class Pig
    attr_reader :children
    attr_accessor :inventory

    def initialize(inventory: [], children: [])
      @inventory = inventory
      @children = children
    end

    def wealth
      inventory.find { |item| item.kind_of?(Wealth) }
    end

    def child_of?(pig)
      pig.children.include?(self)
    end
  end
end
