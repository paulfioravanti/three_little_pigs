# frozen_string_literal: true

require "test_helper"

module ThreeLittlePigs
  module Chapters
    class Chapter08SecondPigReceivesSticksTest < Minitest::Test
      attr_reader :story, :stick_man, :second_pig

      def setup
        suppress_output do
          @story = Story.until_chapter(Chapter08SecondPigReceivesSticks)
          Chapter08SecondPigReceivesSticks.tell(story)
        end
        @stick_man = story.stick_man
        @second_pig = story.second_pig
      end

      def test_the_man_gives_the_second_pig_a_bundle_of_sticks
        assert_equal(Bundle.of(:sticks), second_pig.inventory)
        assert_empty(stick_man.inventory)
      end
    end
  end
end
