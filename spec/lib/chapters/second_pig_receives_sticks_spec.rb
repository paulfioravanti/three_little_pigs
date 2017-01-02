# frozen_string_literal: true
require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe SecondPigReceivesSticks do
      let(:story) { Story.until_chapter(described_class) }
      let(:stick_man) { story.stick_man }
      let(:second_pig) { story.second_pig }

      before { described_class.tell(story) }

      specify "the man gives the second little pig a bundle of sticks" do
        expect(second_pig.inventory).to eq(Bundle.of(:sticks))
        expect(stick_man.inventory).to be_empty
      end
    end
  end
end
