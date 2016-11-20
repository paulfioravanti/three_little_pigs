require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe SecondPigMeetsStickMan do
      let(:story) { Story.until_chapter(described_class) }
      let(:stick_man) { story.stick_man }

      before { described_class.tell(story) }

      specify "the second little pig met a man with a bundle of sticks" do
        expect(stick_man).to be_a(Man)
        expect(stick_man.inventory).to eq(Bundle.of(:sticks))
      end
    end
  end
end
