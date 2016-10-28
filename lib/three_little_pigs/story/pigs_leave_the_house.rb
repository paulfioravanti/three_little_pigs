module ThreeLittlePigs
  module Story
    module PigsLeaveTheHouse
      module_function

      def tell(story)
        if story.mother_pig.wealth < Wealth.level(:medium)
          story.mothers_house.occupants.reject! do |occupant|
            occupant != story.mother_pig
          end
        end
      end
    end
  end
end
