module ThreeLittlePigs
  module Story
    module PigsLeaveTheHouse
      module_function

      def tell(story)
        mother = story.mother_pig
        mother.wealth = Wealth.level(:low)

        if mother.wealth < Wealth.level(:medium)
          mother.send_away(mother.children)
        end
      end
    end
  end
end
