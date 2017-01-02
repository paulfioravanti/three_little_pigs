# frozen_string_literal: true
require "test_helper"

module ThreeLittlePigs
  module Chapters
    class ThirdPigBuildsBrickHouseTest < Minitest::Test
      attr_reader :story, :third_pig

      def setup
        suppress_output do
          @story = Story.until_chapter(ThirdPigBuildsBrickHouse)
          ThirdPigBuildsBrickHouse.tell(story)
        end
        @third_pig = story.third_pig
      end

      def test_the_third_pig_built_his_house_of_bricks
        assert_kind_of(House, third_pig.house)
        assert_equal(:bricks, third_pig.house.building_material)
        assert_equal([third_pig], third_pig.house.occupants)
        assert_empty(third_pig.inventory)
      end
    end
  end
end
