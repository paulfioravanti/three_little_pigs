# frozen_string_literal: true

module ThreeLittlePigs
  module Chapters
    module Chapter14WolfAttacksStrawHouse
      module_function

      def tell(story)
        wolf = story.wolf
        first_pig = story.first_pig
        second_pig = story.second_pig

        wolf.huff(at: first_pig.house)
        wolf.puff(at: first_pig.house)

        if first_pig.house_blown_down?
          first_pig.escape_to(second_pig.house)
        end
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
