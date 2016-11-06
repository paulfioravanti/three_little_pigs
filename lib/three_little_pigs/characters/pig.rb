module ThreeLittlePigs
  class Pig
    attr_reader :children, :house, :slug
    attr_accessor :inventory, :wealth

    def initialize(slug:, inventory: OpenStruct.new, children: [])
      @slug = slug
      @inventory = inventory
      @children = children
    end

    def house
      House.belonging_to(self)
    end

    def send_away(pigs)
      house.occupants.reject! { |occupant| pigs.include?(occupant) }
    end

    def use(building_material)
      building_material = BuildingMaterials.const_for(building_material)
      building_materials, self.inventory =
        inventory.partition { |item| item.kind_of?(building_material) }
      building_materials
    end

    def escape_to(house)
      house.occupants << self
    end

    def close(house_part, on:)
      on.public_send(house_part).status = :closed
    end
  end
end
