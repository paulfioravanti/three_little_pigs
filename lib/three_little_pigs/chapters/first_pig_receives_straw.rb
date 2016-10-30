module ThreeLittlePigs
  module Chapters
    module FirstPigReceivesStraw
      module_function

      def tell(story)
        story.straw_man.give(:straw, to: story.first_pig)
      end
    end
  end
end
