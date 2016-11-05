module ThreeLittlePigs
  module Chapters
    module PigsPreparePotOfWater
      module_function

      def tell(story)
        fireplace = story.third_pig.house.fireplace
        pot = story.pot = Pot.new

        fireplace.hearth = pot
        pot << Water.new
        fireplace.light_fire
      end
    end
  end
end
