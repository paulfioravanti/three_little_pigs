require "test_helper"

module ThreeLittlePigs
  module Chapters
    class PigsCloseUpBrickHouseTest < Minitest::Test
      attr_reader :story, :brick_house

      def setup
        suppress_output do
          @story = Story.so_far(until_chapter: PigsCloseUpBrickHouse)
          PigsCloseUpBrickHouse.tell(story)
        end
        @brick_house = story.third_pig.house
      end

      def test_the_door_and_windows_were_closed_but_the_chimney_was_open
        assert(brick_house.door.closed?)
        assert(brick_house.windows.closed?)
        assert(brick_house.chimney.open?)
      end
    end
  end
end
