module ThreeLittlePigs
  module Chapters
    module SecondPigReceivesSticks
      module_function

      def tell(story)
        story.stick_man.give(:sticks, to: story.second_pig)
      end
    end
  end
end
