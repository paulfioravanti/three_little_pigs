# frozen_string_literal: true

require "test_helper"

module ThreeLittlePigs
  module Chapters
    class Chapter13EnterTheWolfTest < Minitest::Test
      attr_reader :story

      def setup
        suppress_output do
          @story = Story.until_chapter(Chapter13EnterTheWolf)
          Chapter13EnterTheWolf.tell(story)
        end
      end

      def test_a_wolf_came_along
        assert_kind_of(Wolf, story.wolf)
      end
    end
  end
end
