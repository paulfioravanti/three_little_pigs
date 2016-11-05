module ThreeLittlePigs
  module BuildingMaterials
    Stick = Struct.new(:strength) do
      def initialize(*)
        super
        self.strength ||= 2
      end
    end
  end
end
