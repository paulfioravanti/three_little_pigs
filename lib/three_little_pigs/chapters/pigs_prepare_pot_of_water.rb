module ThreeLittlePigs
  module Chapters
    module PigsPreparePotOfWater
      module_function

      def tell(story)
        third_pig = story.third_pig
        fireplace = third_pig.house.fireplace
        pot = story.pot = Pot.new
        water = Water.new
        fire = Fire.new

        third_pig.put(pot, into: fireplace)
        third_pig.put(water, into: pot)
        third_pig.put(fire, into: fireplace)
      end
    end
  end
end
