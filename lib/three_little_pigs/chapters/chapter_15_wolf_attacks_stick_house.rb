# frozen_string_literal: true

module ThreeLittlePigs
  module Chapters
    module Chapter15WolfAttacksStickHouse
      module_function

      def tell(story)
        wolf = story.wolf
        first_pig = story.first_pig
        second_pig = story.second_pig
        third_pig = story.third_pig

        wolf.huff(at: second_pig.house)
        wolf.puff(at: second_pig.house)

        if second_pig.house_blown_down?
          first_pig.escape_to(third_pig.house)
          second_pig.escape_to(third_pig.house)
        end
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
