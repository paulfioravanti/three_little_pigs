# frozen_string_literal: true
require "test_helper"

module ThreeLittlePigs
  module Chapters
    class OnceUponATimeTest < Minitest::Test
      attr_reader :story, :first_pig, :second_pig, :third_pig

      def setup
        suppress_output do
          @story = Story.beginning
          OnceUponATime.tell(story)
        end
        @first_pig = story.first_pig
        @second_pig = story.second_pig
        @third_pig = story.third_pig
      end

      def test_there_were_three_little_pigs
        assert_kind_of(Pig, first_pig)
        assert_kind_of(Pig, second_pig)
        assert_kind_of(Pig, third_pig)
      end
    end
  end
end
