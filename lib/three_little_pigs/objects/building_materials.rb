module ThreeLittlePigs
  module BuildingMaterials
    BUILDING_MATERIAL_SYMBOLS = {
      "straw" => :straw,
      "stick" => :sticks,
      "brick" => :bricks
    }
    private_constant :BUILDING_MATERIAL_SYMBOLS

    Straw = Struct.new(:strength) do
      def initialize(*)
        super
        self.strength ||= 3
      end
    end

    Stick = Struct.new(:strength) do
      def initialize(*)
        super
        self.strength ||= 6
      end
    end

    Brick = Struct.new(:strength) do
      def initialize(*)
        super
        self.strength ||= 9
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
      primary_material_name = Utilities.demodulize(primary_material).downcase
      BUILDING_MATERIAL_SYMBOLS[primary_material_name]
    end

    def combined_strength(materials)
      materials.reduce(0) { |acc, material| acc += material.strength }
    end
  end
end
