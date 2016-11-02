module ThreeLittlePigs
  module Chapters
    module SecondPigBuildsStickHouse
      module_function

      def tell(story)
        second_pig = story.second_pig

        story.houses <<
          House.build(
            building_materials: second_pig.use(:sticks),
            owner: second_pig,
            occupants: [second_pig]
          )
      end
    end
  end
end
