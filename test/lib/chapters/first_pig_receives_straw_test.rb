# frozen_string_literal: true

require "test_helper"

module ThreeLittlePigs
  module Chapters
    class FirstPigReceivesStrawTest < Minitest::Test
      attr_reader :story, :straw_man, :first_pig

      def setup
        suppress_output do
          @story = Story.until_chapter(FirstPigReceivesStraw)
          FirstPigReceivesStraw.tell(story)
        end
        @straw_man = story.straw_man
        @first_pig = story.first_pig
      end

      def test_the_man_gives_the_first_pig_a_bundle_of_straw
        assert_equal(Bundle.of(:straw), first_pig.inventory)
        assert_empty(straw_man.inventory)
      end
    end
  end
end
