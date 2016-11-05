module ThreeLittlePigs
  module BuildingMaterials
    Brick = Struct.new(:strength) do
      def initialize(*)
        super
        self.strength ||= 6
      end
    end
  end
end
