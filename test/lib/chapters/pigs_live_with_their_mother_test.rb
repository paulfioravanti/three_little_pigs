require "test_helper"

module ThreeLittlePigs
  module Chapters
    class PigsLiveWithTheirMotherTest < Minitest::Test
      attr_reader :story, :mother_pig, :first_pig, :second_pig, :third_pig

      def setup
        suppress_output do
          @story = Story.so_far(until_chapter: PigsLiveWithTheirMother)
          PigsLiveWithTheirMother.tell(story)
        end
        @mother_pig = story.mother_pig
        @first_pig = story.first_pig
        @second_pig = story.second_pig
        @third_pig = story.third_pig
      end

      def test_the_three_little_pigs_had_a_mother
        assert_kind_of(Pig, mother_pig)
        assert_equal([first_pig, second_pig, third_pig], mother_pig.children)
      end

      def test_the_pigs_lived_together_in_the_mothers_house
        assert_equal(
          [mother_pig, first_pig, second_pig, third_pig],
          mother_pig.house.occupants
        )
      end
    end
  end
end
