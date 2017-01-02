# frozen_string_literal: true
module ThreeLittlePigs
  module Bundle
    NUMBER_OF_ITEMS_IN_A_BUNDLE = 10
    private_constant :NUMBER_OF_ITEMS_IN_A_BUNDLE

    module_function

    def of(building_material)
      Array.new(
        NUMBER_OF_ITEMS_IN_A_BUNDLE,
        BuildingMaterials.const_for(building_material).new
      )
    end
  end
end
