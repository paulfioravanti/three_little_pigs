# frozen_string_literal: true

module ThreeLittlePigs
  module Chapters
    module Chapter06FirstPigBuildsStrawHouse
      module_function

      def tell(story)
        first_pig = story.first_pig

        story.houses <<
          House.build(
            building_materials: first_pig.use(:straw),
            owner: first_pig
          )
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
