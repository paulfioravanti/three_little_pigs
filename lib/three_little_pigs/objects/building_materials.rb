module ThreeLittlePigs
  module BuildingMaterials
    module_function

    def const_for(material_name)
      const_get(material_name.to_s.capitalize)
    end

    def sym_for(materials)
      # NOTE: Assumes that materials will always be of a
      # single type, which in the story, they are.
      primary_material = materials.first.class
      Utilities.demodulize(primary_material).downcase.to_sym
    end

    def combined_strength(materials)
      materials.reduce(0) do |total_strength, material|
        total_strength + material.strength
      end
    end
  end
end
