module ThreeLittlePigs
  module Chapters
    module WolfAttacksStickHouse
      module_function

      def tell(story)
        wolf = story.wolf
        first_pig = story.first_pig
        second_pig = story.second_pig
        third_pig = story.third_pig

        wolf.huff(at: second_pig.house)
        wolf.puff(at: second_pig.house)
        wolf.blow(at: second_pig.house)

        if second_pig.house.nil?
          first_pig.escape_to(third_pig.house)
          second_pig.escape_to(third_pig.house)
        end
      end
    end
  end
end
