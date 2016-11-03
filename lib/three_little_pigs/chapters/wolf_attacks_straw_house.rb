module ThreeLittlePigs
  module Chapters
    module WolfAttacksStrawHouse
      module_function

      def tell(story)
        wolf = story.wolf
        first_pig = story.first_pig
        second_pig = story.second_pig

        wolf.huff(at: first_pig.house)
        wolf.puff(at: first_pig.house)

        if first_pig.house.nil?
          first_pig.escape_to(second_pig.house)
        end
      end
    end
  end
end
