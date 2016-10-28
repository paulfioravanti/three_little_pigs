module ThreeLittlePigs
  module Story
    module FirstPigReceivesStraw
      module_function

      def tell(story)
        story.first_pig.inventory, story.straw_man.inventory =
          story.straw_man.inventory.partition do |item|
            item.kind_of?(Straw)
          end
      end
    end
  end
end
