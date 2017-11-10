# frozen_string_literal: true

require "test_helper"

module ThreeLittlePigs
  module Chapters
    class ThirdPigMeetsBrickManTest < Minitest::Test
      attr_reader :story, :brick_man

      def setup
        suppress_output do
          @story = Story.until_chapter(ThirdPigMeetsBrickMan)
          ThirdPigMeetsBrickMan.tell(story)
        end
        @brick_man = story.brick_man
      end

      def test_the_third_pig_met_a_man_with_a_load_of_bricks
        assert_kind_of(Man, brick_man)
        assert_equal(Load.of(:bricks), brick_man.inventory)
      end
    end
  end
end
