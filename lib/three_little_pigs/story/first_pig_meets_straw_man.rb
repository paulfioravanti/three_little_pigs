module ThreeLittlePigs
  module Story
    module FirstPigMeetsStrawMan
      module_function

      def tell(story)
        bundle_of_straw = Array.new(10, Straw.new)
        story.straw_man = Man.new(inventory: bundle_of_straw)
      end
    end
  end
end
