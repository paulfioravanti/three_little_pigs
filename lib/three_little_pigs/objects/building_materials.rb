module ThreeLittlePigs
  module BuildingMaterials
    Straw = Struct.new(:strength) do
      def initialize(*)
        super
        self.strength ||= 1
      end
    end

    Stick = Struct.new(:strength) do
      def initialize(*)
        super
        self.strength ||= 5
      end
    end

    Brick = Struct.new(:strength) do
      def initialize(*)
        super
        self.strength ||= 10
      end
    end

    module_function

    def const_for(material_name)
      material_type = material_name.to_s.capitalize.tr("s", "")
      const_get(material_type)
    end

    def sym_for(materials)
      # NOTE: Assumes that materials will always be of a
      # single type, which in the story, they are.
      primary_material = materials.first.class
      Utilities.demodulize(primary_material).downcase.to_sym
    end

    def combined_strength(materials)
      materials.reduce(0) { |acc, material| acc += material.strength }
    end
  end
end
