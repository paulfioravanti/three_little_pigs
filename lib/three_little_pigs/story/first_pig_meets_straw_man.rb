module ThreeLittlePigs
  module Story
    module FirstPigMeetsStrawMan
      module_function

      def tell(story)
        story.straw_man = Man.new(inventory: Bundle.of(:straw))
      end
    end
  end
end
