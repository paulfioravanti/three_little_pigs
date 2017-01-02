module ThreeLittlePigs
  module Chapters
    module WolfAttacksBrickHouse
      module_function

      def tell(story)
        wolf = story.wolf
        third_pig = story.third_pig

        tries = 2
        while third_pig.house && tries.positive?
          wolf.huff(at: third_pig.house)
          wolf.puff(at: third_pig.house)
          tries -= 1
        end
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
