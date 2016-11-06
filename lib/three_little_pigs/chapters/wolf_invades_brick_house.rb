module ThreeLittlePigs
  module Chapters
    module WolfInvadesBrickHouse
      module_function

      def tell(story)
        wolf = story.wolf
        chimney = story.third_pig.house.chimney

        wolf.enter(chimney)
      end
    end
  end
end
