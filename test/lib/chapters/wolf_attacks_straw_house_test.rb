require "test_helper"

module ThreeLittlePigs
  module Chapters
    class WolfAttacksStrawHouseTest < Minitest::Test
      attr_reader :story, :wolf, :first_pig, :second_pig

      def setup
        suppress_output do
          @story = Story.so_far(until_chapter: WolfAttacksStrawHouse)
          @first_pig = story.first_pig
          @second_pig = story.second_pig
          WolfAttacksStrawHouse.tell(story)
        end
      end

      def test_wolf_huffed_and_puffed_and_blew_the_straw_house_down
        # NOTE: Couldn't figure out how to do the mocking in Minitest
        # for huff and puff due to getting `nil` values for the stick house
        assert_nil(first_pig.house)
      end

      def test_the_first_little_pig_ran_to_his_brothers_house_of_sticks
        assert_includes(second_pig.house.occupants, first_pig)
        assert_includes(second_pig.house.occupants, second_pig)
      end
    end
  end
end
