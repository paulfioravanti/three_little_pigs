module ThreeLittlePigs
  module Chapters
    module ThirdPigMeetsBrickMan
      module_function

      def tell(story)
        story.brick_man = Man.new(inventory: Load.of(:bricks))
      end
    end
  end
end
