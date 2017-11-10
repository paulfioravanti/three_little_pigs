# frozen_string_literal: true

module ThreeLittlePigs
  class Man
    attr_reader :slug
    attr_accessor :inventory

    def initialize(slug:, inventory: [])
      @slug = slug
      @inventory = inventory
    end

    def give(building_material, to:)
      building_material = BuildingMaterials.const_for(building_material)
      to.inventory, self.inventory =
        inventory.partition { |item| item.is_a?(building_material) }
    end
  end
end
