require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe WolfAttacksStickHouse do
      let(:story) { Story.so_far(until_chapter: described_class) }
      let(:wolf) { story.wolf }
      let(:first_pig) { story.first_pig }
      let(:second_pig) { story.second_pig }
      let(:third_pig) { story.third_pig }
      let(:stick_house) { second_pig.house }

      before do
        allow(wolf).to receive(:huff).with(at: stick_house).and_call_original
        allow(wolf).to receive(:puff).with(at: stick_house).and_call_original
        described_class.tell(story)
      end

      specify "wolf huffed and puffed and blew the stick house down" do
        expect(wolf).to have_received(:huff).with(at: stick_house)
        expect(wolf).to have_received(:puff).with(at: stick_house)
        expect(second_pig.house).to be nil
      end

      specify "the little pigs ran to their brother's house of bricks" do
        expect(third_pig.house.occupants).to \
          match_array([first_pig, second_pig, third_pig])
      end
    end
  end
end
