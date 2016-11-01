require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe FirstPigReceivesStraw do
      let(:story) { Story.so_far(until_chapter: described_class) }
      let(:straw_man) { story.straw_man }
      let(:first_pig) { story.first_pig }

      before { described_class.tell(story) }

      specify "the man gives the first little pig a bundle of straw" do
        expect(first_pig.inventory).to eq(Bundle.of(:straw))
        expect(straw_man.inventory).to be_empty
      end
    end
  end
end
