# frozen_string_literal: true

module ThreeLittlePigs
  module Chapters
    module ThirdPigBuildsBrickHouse
      module_function

      def tell(story)
        third_pig = story.third_pig

        story.houses <<
          House.build(
            building_materials: third_pig.use(:bricks),
            owner: third_pig
          )
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
