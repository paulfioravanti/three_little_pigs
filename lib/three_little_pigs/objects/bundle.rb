module ThreeLittlePigs
  module Bundle
    module_function

    def of(building_material)
      Array.new(10, BuildingMaterials.const_for(building_material).new)
    end
  end
  Load = Bundle
end
