module ThreeLittlePigs
  class House
    attr_reader :owner, :building_material
    attr_accessor :occupants

    def self.belonging_to(owner)
      Story.houses.find { |house| house.owner == owner }
    end

    def self.build(building_materials:, **options)
      options[:building_material] =
        BuildingMaterials.sym_for(building_materials)
      options[:strength] =
        BuildingMaterials.combined_strength(building_materials)
      new(options)
    end

    def initialize(owner:, occupants:, **options)
      @owner = owner
      @occupants = occupants
      @building_material = options[:building_material]
      @strength = options[:strength]
    end
  end
end
