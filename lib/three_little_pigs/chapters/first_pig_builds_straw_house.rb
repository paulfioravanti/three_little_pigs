module ThreeLittlePigs
  module Chapters
    module FirstPigBuildsStrawHouse
      module_function

      def tell(story)
        first_pig = story.first_pig

        story.houses <<
          House.new(
            building_materials: first_pig.inventory,
            owner: first_pig,
            occupants: [first_pig]
          )
      end
    end
  end
end
