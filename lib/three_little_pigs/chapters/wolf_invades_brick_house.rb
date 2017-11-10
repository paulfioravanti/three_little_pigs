# frozen_string_literal: true

module ThreeLittlePigs
  module Chapters
    module WolfInvadesBrickHouse
      module_function

      def tell(story)
        wolf = story.wolf
        chimney = story.third_pig.house.chimney

        wolf.enter(chimney)
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
