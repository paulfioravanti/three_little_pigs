module ThreeLittlePigs
  module Story
    module OnceUponATime
      module_function

      def tell(story)
        story.first_pig = Pig.new
        story.second_pig = Pig.new
        story.third_pig = Pig.new
        story.mother_pig =
          Pig.new(
            income: Income.level(:low),
            children: [story.first_pig, story.second_pig, story.third_pig]
          )
        story.mothers_house =
          House.new(
            occupants: [
              story.mother_pig,
              story.first_pig,
              story.second_pig,
              story.third_pig
            ]
          )
      end
    end
  end
end
