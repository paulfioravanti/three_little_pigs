module ThreeLittlePigs
  module Chapters
    module PigsPreparePotOfWater
      module_function

      def tell(story)
        third_pig = story.third_pig
        brick_house = third_pig.house

        pot = story.pot = Pot.new
        water = Water.new
        fire = Fire.new
        third_pig.put(pot, into: brick_house.hearth)
        third_pig.put(water, into: pot.contents)
        third_pig.put(fire, into: brick_house.hearth)
      end
    end
  end
end
