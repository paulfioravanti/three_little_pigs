require "test_helper"

module ThreeLittlePigs
  module Chapters
    class EnterTheWolfTest < Minitest::Test
      attr_reader :story

      def setup
        suppress_output do
          @story = Story.so_far(until_chapter: EnterTheWolf)
          EnterTheWolf.tell(story)
        end
      end

      def test_a_wolf_came_along
        assert_kind_of(Wolf, story.wolf)
      end
    end
  end
end
