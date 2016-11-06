module ThreeLittlePigs
  module Chapters
    module EnterTheWolf
      module_function

      def tell(story)
        story.wolf = Wolf.new(slug: "wolf")
      end
    end
  end
end
