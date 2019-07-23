# frozen_string_literal: true

module ThreeLittlePigs
  module Chapters
    module Chapter07SecondPigMeetsStickMan
      module_function

      def tell(story)
        story.stick_man =
          Man.new(slug: "stick_man", inventory: Bundle.of(:sticks))
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
