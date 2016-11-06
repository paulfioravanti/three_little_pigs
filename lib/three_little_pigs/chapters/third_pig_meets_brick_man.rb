module ThreeLittlePigs
  module Chapters
    module ThirdPigMeetsBrickMan
      module_function

      def tell(story)
        story.brick_man =
          Man.new(slug: "brick_man", inventory: Load.of(:bricks))
      end
    end
  end
end
