# frozen_string_literal: true

require "test_helper"

module ThreeLittlePigs
  module Chapters
    class Chapter03PigsLeaveTheHouseTest < Minitest::Test
      attr_reader :story, :mother_pig

      def setup
        suppress_output do
          @story = Story.until_chapter(Chapter03PigsLeaveTheHouse)
          Chapter03PigsLeaveTheHouse.tell(story)
        end
        @mother_pig = story.mother_pig
      end

      def test_the_mother_pig_did_not_have_enough_to_keep_her_children
        refute_equal(Wealth.level(:enough), mother_pig.wealth)
      end

      def test_the_mother_pig_sent_the_three_little_pigs_away
        assert_equal([mother_pig], mother_pig.house.occupants)
      end
    end
  end
end
