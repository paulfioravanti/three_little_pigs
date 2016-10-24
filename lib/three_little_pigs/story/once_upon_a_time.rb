module ThreeLittlePigs
  module Story
    module OnceUponATime
      module_function

      def tell(story)
        story.fifer = Pig.new(name: "Fifer")
        story.fidder = Pig.new(name: "Fidder")
        story.practical = Pig.new(name: "Practical")
        story.mother =
          Pig.new(
            name: "Mother",
            children: [story.fifer, story.fiddler, story.practical]
          )
        story.house =
          House.new(
            occupants: [
              story.mother, story.fifer, story.fiddler, story.practical
            ]
          )
      end
    end
  end
end
