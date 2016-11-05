module ThreeLittlePigs
  module BuildingMaterials
    Straw = Struct.new(:strength) do
      def initialize(*)
        super
        self.strength ||= 1
      end
    end
  end
end
