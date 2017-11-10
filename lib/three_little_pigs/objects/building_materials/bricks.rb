# frozen_string_literal: true

module ThreeLittlePigs
  module BuildingMaterials
    Bricks =
      Struct.new(:strength) do
        def initialize(*)
          super
          self.strength ||= 6
        end
      end
  end
end
