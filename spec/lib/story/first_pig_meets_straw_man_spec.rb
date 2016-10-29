require "spec_helper"

module ThreeLittlePigs
  module Story
    RSpec.describe FirstPigMeetsStrawMan do
      let(:story) { Story.so_far(until_chapter: FirstPigMeetsStrawMan) }
      let(:straw_man) { story.straw_man }

      before { FirstPigMeetsStrawMan.tell(story) }

      specify "the first little pig met a man carrying a bundle of straw" do
        expect(straw_man).to be_a(Man)
        expect(straw_man.inventory).to eq(Bundle.of(:straw))
      end
    end
  end
end
