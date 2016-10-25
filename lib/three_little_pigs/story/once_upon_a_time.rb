module ThreeLittlePigs
  module Story
    module OnceUponATime
      module_function

      def tell(story)
        story.fifer = Pig.new(name: "Fifer")
        story.fiddler = Pig.new(name: "Fiddler")
        story.practical = Pig.new(name: "Practical")
        story.mother =
          Pig.new(
            name: "Mother",
            children: [story.fifer, story.fiddler, story.practical]
          )
        story.mothers_house =
          House.new(
            occupants: [
              story.mother, story.fifer, story.fiddler, story.practical
            ]
          )
      end
    end
  end
end
