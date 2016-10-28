module ThreeLittlePigs
  class House
    attr_reader :owner, :building_material
    attr_accessor :occupants

    def initialize(owner: nil, occupants: [], building_material: :unknown)
      @owner = owner
      @occupants = occupants
      @building_material = building_material
    end
  end
end
