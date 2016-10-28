module ThreeLittlePigs
  module Story
    module PigsLeaveTheHouse
      module_function

      def tell(story)
        story.mother_pig.income = Income.level("Low")

        if story.mother_pig.income < Income.level("Medium")
          story.mothers_house.occupants.reject! do |occupant|
            occupant != story.mother_pig
          end
        end
      end
    end
  end
end
