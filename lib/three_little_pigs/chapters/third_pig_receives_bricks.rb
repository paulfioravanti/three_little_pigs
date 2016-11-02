module ThreeLittlePigs
  module Chapters
    module ThirdPigReceivesBricks
      module_function

      def tell(story)
        story.brick_man.give(:bricks, to: story.third_pig)
      end
    end
  end
end
