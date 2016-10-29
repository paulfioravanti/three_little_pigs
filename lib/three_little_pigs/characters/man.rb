module ThreeLittlePigs
  class Man
    attr_accessor :inventory

    def initialize(inventory: [])
      @inventory = inventory
    end

    def give(material_name, to:)
      material =
        Module.const_get("#{Module.nesting.last}::#{material_name.capitalize}")
      to.inventory, self.inventory =
        inventory.partition { |item| item.kind_of?(material) }
    end
  end
end
