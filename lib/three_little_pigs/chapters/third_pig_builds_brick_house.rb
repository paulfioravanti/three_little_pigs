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
      end
    end
  end
end
