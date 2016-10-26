module ThreeLittlePigs
  module Story
    module OnceUponATime
      module_function

      def tell(story)
        story.first_pig = Pig.new
        story.second_pig = Pig.new
        story.third_pig = Pig.new
        story.mother =
          Pig.new(
            children: [story.first_pig, story.second_pig, story.third_pig]
          )
        story.mothers_house =
          House.new(
            occupants: [
              story.mother, story.first_pig, story.second_pig, story.third_pig
            ]
          )
      end
    end
  end
end
