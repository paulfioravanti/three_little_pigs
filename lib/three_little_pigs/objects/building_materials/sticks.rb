# frozen_string_literal: true
module ThreeLittlePigs
  module BuildingMaterials
    Sticks =
      Struct.new(:strength) do
        def initialize(*)
          super
          self.strength ||= 2
        end
      end
  end
end
