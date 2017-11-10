# frozen_string_literal: true

module ThreeLittlePigs
  module Chapters
    module FirstPigReceivesStraw
      module_function

      def tell(story)
        story.straw_man.give(:straw, to: story.first_pig)
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
