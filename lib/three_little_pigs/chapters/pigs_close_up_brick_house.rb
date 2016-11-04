module ThreeLittlePigs
  module Chapters
    module PigsCloseUpBrickHouse
      module_function

      def tell(story)
        brick_house = story.third_pig.house

        story.first_pig.close(:windows, on: brick_house)
        story.second_pig.close(:door, on: brick_house)
      end
    end
  end
end
