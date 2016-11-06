module ThreeLittlePigs
  module Chapters
    module FirstPigMeetsStrawMan
      module_function

      def tell(story)
        story.straw_man =
          Man.new(slug: "straw_man", inventory: Bundle.of(:straw))
      end
    end
  end
end
