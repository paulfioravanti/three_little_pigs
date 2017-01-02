# frozen_string_literal: true
module ThreeLittlePigs
  module Chapters
    module PigsCloseUpBrickHouse
      module_function

      def tell(story)
        brick_house = story.third_pig.house

        brick_house.door.close
        brick_house.windows.close
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
