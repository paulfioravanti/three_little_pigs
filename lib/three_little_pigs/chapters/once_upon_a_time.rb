module ThreeLittlePigs
  module Chapters
    module OnceUponATime
      module_function

      def tell(story)
        story.first_pig = Pig.new(slug: "first_pig")
        story.second_pig = Pig.new(slug: "second_pig")
        story.third_pig = Pig.new(slug: "third_pig")

        binding.pry if ENV["DEBUG"]
      end
    end
  end
end
