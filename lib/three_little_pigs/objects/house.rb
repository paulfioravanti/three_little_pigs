module ThreeLittlePigs
  class House
    extend Forwardable

    attr_reader :owner, :building_material, :door, :windows, :fireplace
    attr_accessor :occupants, :strength, :damage

    def_delegators :@fireplace, :chimney, :hearth

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

    def initialize(owner:, occupants: [owner], **options)
      @owner = owner
      @occupants = occupants
      @building_material = options[:building_material]
      @strength = options[:strength]
      @damage = 0
      @door = Door.new
      @windows = Windows.new
      @fireplace = Fireplace.new
    end

    def inflict_damage(damage_level)
      self.damage += damage_level
      # rubocop:disable Style/GuardClause
      # NOTE: Can't really be converted to a guard clause as the first line
      # needs to have happened before the following conditional.
      if damage > strength
        Story.houses.delete(self)
      end
      # rubocop:enable Style/GuardClause
    end
  end
end
