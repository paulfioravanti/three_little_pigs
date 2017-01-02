# frozen_string_literal: true
require "test_helper"

module ThreeLittlePigs
  module Chapters
    class ThirdPigReceivesBricksTest < Minitest::Test
      attr_reader :story, :brick_man, :third_pig

      def setup
        suppress_output do
          @story = Story.until_chapter(ThirdPigReceivesBricks)
          ThirdPigReceivesBricks.tell(story)
        end
        @brick_man = story.brick_man
        @third_pig = story.third_pig
      end

      def test_the_man_gives_the_third_pig_a_load_of_bricks
        assert_equal(Load.of(:bricks), third_pig.inventory)
        assert_empty(brick_man.inventory)
      end
    end
  end
end
