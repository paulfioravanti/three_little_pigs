# frozen_string_literal: true

require "test_helper"

module ThreeLittlePigs
  module Chapters
    class Chapter09SecondPigBuildsStickHouseTest < Minitest::Test
      attr_reader :story, :second_pig

      def setup
        suppress_output do
          @story = Story.until_chapter(Chapter09SecondPigBuildsStickHouse)
          Chapter09SecondPigBuildsStickHouse.tell(story)
        end
        @second_pig = story.second_pig
      end

      def test_the_second_pig_built_his_house_of_sticks
        assert_kind_of(House, second_pig.house)
        assert_equal(:sticks, second_pig.house.building_material)
        assert_equal([second_pig], second_pig.house.occupants)
        assert_empty(second_pig.inventory)
      end
    end
  end
end
