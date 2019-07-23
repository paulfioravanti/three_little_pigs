# frozen_string_literal: true

require "test_helper"

module ThreeLittlePigs
  module Chapters
    class Chapter07SecondPigMeetsStickManTest < Minitest::Test
      attr_reader :story, :stick_man

      def setup
        suppress_output do
          @story = Story.until_chapter(Chapter07SecondPigMeetsStickMan)
          Chapter07SecondPigMeetsStickMan.tell(story)
        end
        @stick_man = story.stick_man
      end

      def test_the_second_pig_met_a_man_carrying_a_bundle_of_sticks
        assert_kind_of(Man, stick_man)
        assert_equal(Bundle.of(:sticks), stick_man.inventory)
      end
    end
  end
end
