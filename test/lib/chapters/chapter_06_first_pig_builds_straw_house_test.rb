# frozen_string_literal: true

require "test_helper"

module ThreeLittlePigs
  module Chapters
    class Chapter06FirstPigBuildsStrawHouseTest < Minitest::Test
      attr_reader :story, :first_pig

      def setup
        suppress_output do
          @story = Story.until_chapter(Chapter06FirstPigBuildsStrawHouse)
          Chapter06FirstPigBuildsStrawHouse.tell(story)
        end
        @first_pig = story.first_pig
      end

      def test_the_first_pig_built_his_house_of_straw
        assert_kind_of(House, first_pig.house)
        assert_equal(:straw, first_pig.house.building_material)
        assert_equal([first_pig], first_pig.house.occupants)
        assert_empty(first_pig.inventory)
      end
    end
  end
end
