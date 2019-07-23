# frozen_string_literal: true

module ThreeLittlePigs
  module Chapters
    module Chapter11ThirdPigReceivesBricks
      module_function

      def tell(story)
        story.brick_man.give(:bricks, to: story.third_pig)
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
