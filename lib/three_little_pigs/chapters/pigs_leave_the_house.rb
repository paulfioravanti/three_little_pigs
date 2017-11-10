# frozen_string_literal: true

module ThreeLittlePigs
  module Chapters
    module PigsLeaveTheHouse
      module_function

      def tell(story)
        mother_pig = story.mother_pig
        mother_pig.wealth = Wealth.level(:not_enough)

        if mother_pig.wealth < Wealth.level(:enough)
          mother_pig.send_away(mother_pig.children)
        end
        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
