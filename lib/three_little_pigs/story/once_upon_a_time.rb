module ThreeLittlePigs
  module Story
    module OnceUponATime
      module_function

      def tell(story)
        first_pig = story.first_pig = Pig.new
        second_pig = story.second_pig = Pig.new
        third_pig = story.third_pig = Pig.new

        mother_pig = story.mother_pig =
          Pig.new(children: [first_pig, second_pig, third_pig])

        story.houses =
          [
            House.new(
              owner: mother_pig,
              occupants: [mother_pig, *mother_pig.children]
            )
          ]
      end
    end
  end
end
