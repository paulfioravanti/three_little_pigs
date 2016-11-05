module ThreeLittlePigs
  module Chapters
    module WolfFallsIntoBoilingWater
      module_function

      def tell(story)
        wolf = story.wolf
        chimney = story.third_pig.house.chimney

        wolf.climb_into(chimney)
      end
    end
  end
end
