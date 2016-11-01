module ThreeLittlePigs
  module Chapters
    module SecondPigMeetsStickMan
      module_function

      def tell(story)
        story.stick_man = Man.new(inventory: Bundle.of(:sticks))
      end
    end
  end
end
