require "test_helper"

module ThreeLittlePigs
  module Chapters
    class WolfInvadesBrickHouseTest < Minitest::Test
      attr_reader :story

      def setup
        suppress_output do
          @story = Story.so_far(until_chapter: WolfInvadesBrickHouse)
          WolfInvadesBrickHouse.tell(story)
        end
      end

      def test_the_wolf_slid_into_the_pot_of_water_and_was_boiled_up
        # NOTE: Couldn't figure out how to do the mocking in Minitest
        # for huff and puff due to getting `nil` values for the stick house
        assert_nil(story.wolf)
      end
    end
  end
end
