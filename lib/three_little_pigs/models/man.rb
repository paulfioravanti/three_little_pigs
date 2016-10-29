module ThreeLittlePigs
  class Man
    attr_accessor :inventory

    def initialize(inventory: [])
      @inventory = inventory
    end

    def give(material, to:)
      material = Kernel.const_get("ThreeLittlePigs::#{material.capitalize}")
      to.inventory, self.inventory =
        inventory.partition { |item| item.kind_of?(material) }
    end
  end
end
