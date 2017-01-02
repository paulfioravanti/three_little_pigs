# frozen_string_literal: true
require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe FirstPigMeetsStrawMan do
      let(:story) { Story.until_chapter(described_class) }
      let(:straw_man) { story.straw_man }

      before { described_class.tell(story) }

      specify "the first little pig met a man carrying a bundle of straw" do
        expect(straw_man).to be_a(Man)
        expect(straw_man.inventory).to eq(Bundle.of(:straw))
      end
    end
  end
end
