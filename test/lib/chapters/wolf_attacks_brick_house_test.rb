# frozen_string_literal: true

require "test_helper"

module ThreeLittlePigs
  module Chapters
    class WolfAttacksBrickHouseTest < Minitest::Test
      attr_reader :story, :wolf, :third_pig, :brick_house,
                  :huff_mock, :puff_mock

      # rubocop:disable Metrics/AbcSize
      # rubocop:disable Metrics/MethodLength
      # NOTE: The long setup can't really be helped in this scenario
      def setup
        suppress_output do
          @story = Story.until_chapter(WolfAttacksBrickHouse)
          @wolf = story.wolf
          @third_pig = story.third_pig
          @brick_house = third_pig.house
          @huff_mock = Minitest::Mock.new
          2.times do
            # stub return value of `call` with original value
            huff_mock.expect(
              :call,
              wolf.huff(at: brick_house),
              [{ at: brick_house }]
            )
          end
          @puff_mock = Minitest::Mock.new
          2.times do
            # stub return value of `call` with original value
            puff_mock.expect(
              :call,
              wolf.puff(at: brick_house),
              [{ at: brick_house }]
            )
          end
          wolf.stub(:huff, huff_mock) do
            wolf.stub(:puff, puff_mock) do
              WolfAttacksBrickHouse.tell(story)
            end
          end
        end
      end
      # rubocop:enable Metrics/AbcSize
      # rubocop:enable Metrics/MethodLength

      def test_wolf_huffed_and_puffed_but_could_not_blow_the_brick_house_down
        huff_mock.verify
        puff_mock.verify
        assert(third_pig.house)
      end
    end
  end
end
