require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe WolfAttacksStrawHouse do
      let(:story) { Story.so_far(until_chapter: described_class) }
      let(:wolf) { story.wolf }
      let(:first_pig) { story.first_pig }
      let(:second_pig) { story.second_pig }
      let(:first_pigs_house) { first_pig.house }

      before do
        allow(wolf).to \
          receive(:huff).with(at: first_pigs_house).and_call_original
        allow(wolf).to \
          receive(:puff).with(at: first_pigs_house).and_call_original
        described_class.tell(story)
      end

      specify "wolf huffed and puffed and blew the straw house down" do
        expect(wolf).to have_received(:huff).with(at: first_pigs_house)
        expect(wolf).to have_received(:puff).with(at: first_pigs_house)
        expect(first_pig.house).to be nil
      end

      specify "the first little pig ran to his brother's house of sticks" do
        expect(second_pig.house.occupants).to \
          match_array([first_pig, second_pig])
      end
    end
  end
end
