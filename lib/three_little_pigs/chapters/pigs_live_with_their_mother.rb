# frozen_string_literal: true

module ThreeLittlePigs
  module Chapters
    module PigsLiveWithTheirMother
      module_function

      def tell(story)
        first_pig = story.first_pig
        second_pig = story.second_pig
        third_pig = story.third_pig

        mother_pig =
          story.mother_pig =
            Pig.new(
              slug: "mother_pig",
              children: [first_pig, second_pig, third_pig]
            )

        story.houses =
          [
            House.new(
              owner: mother_pig,
              occupants: [mother_pig, *mother_pig.children]
            )
          ]
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
