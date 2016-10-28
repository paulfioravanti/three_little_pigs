require "spec_helper"

module ThreeLittlePigs
  module Story
    RSpec.describe FirstPigReceivesStraw do
      let(:story) { Story.so_far(until_chapter: FirstPigReceivesStraw) }

      before { FirstPigReceivesStraw.tell(story) }

      specify "the man gives the first little pig a bundle of straw" do
        expect(story.straw_man.inventory).to be_empty
        expect(story.first_pig.inventory).to eq(Bundle.of(:straw))
      end
    end
  end
end
