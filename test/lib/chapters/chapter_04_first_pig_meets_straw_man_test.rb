# frozen_string_literal: true

require "test_helper"

module ThreeLittlePigs
  module Chapters
    class Chapter04FirstPigMeetsStrawManTest < Minitest::Test
      attr_reader :story, :straw_man

      def setup
        suppress_output do
          @story = Story.until_chapter(Chapter04FirstPigMeetsStrawMan)
          Chapter04FirstPigMeetsStrawMan.tell(story)
        end
        @straw_man = story.straw_man
      end

      def test_the_first_pig_met_a_man_carrying_a_bundle_of_straw
        assert_kind_of(Man, straw_man)
        assert_equal(Bundle.of(:straw), straw_man.inventory)
      end
    end
  end
end
