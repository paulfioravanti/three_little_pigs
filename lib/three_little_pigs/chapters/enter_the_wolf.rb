# frozen_string_literal: true
module ThreeLittlePigs
  module Chapters
    module EnterTheWolf
      module_function

      def tell(story)
        story.wolf = Wolf.new(slug: "wolf")
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
