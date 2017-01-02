# frozen_string_literal: true
module ThreeLittlePigs
  module Chapters
    module SecondPigReceivesSticks
      module_function

      def tell(story)
        story.stick_man.give(:sticks, to: story.second_pig)
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
