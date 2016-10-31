module ThreeLittlePigs
  class House
    attr_reader :owner, :made_of
    attr_accessor :occupants

    def self.build(materials:, owner:, occupants:)
      made_of = determine_primary_building_material(materials)
      strength =
        materials.reduce(0) { |acc, material| acc += material.strength }
      new(owner: owner, occupants: occupants, made_of: made_of, strength: strength)
    end

    def self.determine_primary_building_material(materials)
      primary_material = Utilities.primary_class_from(materials)
      Utilities.demodulize(primary_material).downcase.to_sym
    end
    private_class_method :determine_primary_building_material

    def initialize(owner:, occupants:, made_of: nil, strength: nil)
      @owner = owner
      @occupants = occupants
      @made_of = made_of
      @strength = strength
    end

    def self.belonging_to(owner)
      Story.houses.find { |house| house.owner == owner }
    end
  end
end
