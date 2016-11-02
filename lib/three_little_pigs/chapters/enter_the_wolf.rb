module ThreeLittlePigs
  module Chapters
    module EnterTheWolf
      module_function

      def tell(story)
        story.wolf = Wolf.new
      end
    end
  end
end
