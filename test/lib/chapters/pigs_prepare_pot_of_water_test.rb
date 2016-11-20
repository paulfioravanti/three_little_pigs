require "test_helper"

module ThreeLittlePigs
  module Chapters
    class PigsPreparePotOfWaterTest < Minitest::Test
      attr_reader :story, :pot, :water, :fireplace, :boiling_point

      def setup
        suppress_output do
          @story = Story.until_chapter(PigsPreparePotOfWater)
          PigsPreparePotOfWater.tell(story)
        end
        @pot = story.pot
        @water = pot.water
        @fireplace = story.third_pig.house.fireplace
        @boiling_point = 100 # °C
      end

      def test_the_pigs_hung_a_pot_of_water_on_the_fireplace_and_made_a_fire
        assert_equal([water], pot.contents)
        assert_equal(pot, fireplace.hearth)
        assert(fireplace.lit?)
        assert_equal(boiling_point, water.temperature)
      end
    end
  end
end
