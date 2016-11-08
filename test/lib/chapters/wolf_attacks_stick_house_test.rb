require "test_helper"

module ThreeLittlePigs
  module Chapters
    class WolfAttacksStickHouseTest < Minitest::Test
      attr_reader :story, :wolf, :first_pig, :second_pig, :third_pig

      def setup
        suppress_output do
          @story = Story.so_far(until_chapter: WolfAttacksStickHouse)
          @first_pig = story.first_pig
          @second_pig = story.second_pig
          @third_pig = story.third_pig
          WolfAttacksStickHouse.tell(story)
        end
      end

      def test_wolf_huffed_and_puffed_and_blew_the_stick_house_down
        # NOTE: Couldn't figure out how to do the mocking in Minitest
        # for huff and puff due to getting `nil` values for the stick house.
        # There doesn't seem to be a way of doing a `.and_call_original`
        # where the value that gets mocked has a chance of becoming `nil`.
        assert_nil(second_pig.house)
      end

      def test_the_little_pigs_ran_to_their_brothers_house_of_bricks
        brick_house = third_pig.house
        assert_includes(brick_house.occupants, first_pig)
        assert_includes(brick_house.occupants, second_pig)
        assert_includes(brick_house.occupants, third_pig)
      end
    end
  end
end
