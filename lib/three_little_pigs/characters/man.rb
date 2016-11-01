module ThreeLittlePigs
  class Man
    attr_accessor :inventory

    def initialize(inventory: [])
      @inventory = inventory
    end

    def give(building_material, to:)
      building_material = BuildingMaterials.const_for(building_material)
      to.inventory, self.inventory =
        inventory.partition { |item| item.kind_of?(building_material) }
    end
  end
end
