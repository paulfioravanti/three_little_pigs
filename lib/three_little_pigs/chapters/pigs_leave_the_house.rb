module ThreeLittlePigs
  module Chapters
    module PigsLeaveTheHouse
      module_function

      def tell(story)
        mother_pig = story.mother_pig
        mother_pig.wealth = Wealth.level(:low)

        if mother_pig.wealth < Wealth.level(:medium)
          mother_pig.send_away(mother_pig.children)
        end
      end
    end
  end
end
