module ThreeLittlePigs
  class Pig
    attr_reader :children, :house
    attr_accessor :inventory, :wealth

    def initialize(inventory: OpenStruct.new, children: [])
      @inventory = inventory
      @children = children
    end

    def house
      @house ||= House.belonging_to(self)
    end

    def send_away(pigs)
      house.occupants.reject! { |occupant| pigs.include?(occupant) }
    end
  end
end