# frozen_string_literal: true
module ThreeLittlePigs
  module Chapters
    module SecondPigBuildsStickHouse
      module_function

      def tell(story)
        second_pig = story.second_pig

        story.houses <<
          House.build(
            building_materials: second_pig.use(:sticks),
            owner: second_pig
          )
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
