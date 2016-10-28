module ThreeLittlePigs
  class House
    attr_accessor :occupants

    def initialize(occupants: [], building_material: :unknown)
      @occupants = occupants
      @building_material = building_material
    end
  end
end
