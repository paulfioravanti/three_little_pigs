require "spec_helper"

module ThreeLittlePigs
  module Story
    RSpec.describe FirstPigMeetsStrawMan do
      let(:story) { Story.so_far(until_chapter: FirstPigMeetsStrawMan) }

      before do
        FirstPigMeetsStrawMan.tell(story)
      end

      specify "the first little pig met a man carrying a bundle of straw" do
        expect(story.straw_man).to be_a(Man)
        expect(story.straw_man.inventory).to eq(Bundle.of(:straw))
      end
    end
  end
end
