module ThreeLittlePigs
  class House
    MAX_CONTINUOUS_DAMAGE_HITS = 3
    private_constant :MAX_CONTINUOUS_DAMAGE_HITS

    attr_reader :owner, :building_material
    attr_accessor :occupants, :strength, :damage, :damage_counter

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
      @damage = 0
      @damage_counter = 0
    end

    def inflict_damage(damage)
      self.damage += damage
      self.damage_counter += 1
      if damage_counter >= MAX_CONTINUOUS_DAMAGE_HITS
        determine_damage_consequences
      end
    end

    private

    def determine_damage_consequences
      if damage > strength
        Story.houses.delete(self)
      else
        self.damage_counter = 0
      end
    end
  end
end
