module ThreeLittlePigs
  class House
    attr_reader :owner, :building_material
    attr_accessor :occupants

    def self.belonging_to(owner)
      Story.houses.find { |house| house.owner == owner }
    end

    def initialize(owner:, occupants:, building_materials: nil)
      @owner = owner
      @occupants = occupants
      if building_materials
        @building_material = initialize_building_material(building_materials)
        @strength = initialize_strength(building_materials)
      end
    end

    private

    def initialize_building_material(materials)
      # NOTE: Assumes that materials will always be of a
      # single type, which in the story, they are.
      primary_material = materials.first.class
      Utilities.demodulize(primary_material).downcase.to_sym
    end

    def initialize_strength(materials)
      materials.reduce(0) { |acc, material| acc += material.strength }
    end
  end
end
