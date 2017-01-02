# frozen_string_literal: true
require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe WolfAttacksBrickHouse do
      let(:story) { Story.until_chapter(described_class) }
      let(:wolf) { story.wolf }
      let(:third_pig) { story.third_pig }
      let(:brick_house) { third_pig.house }

      before do
        allow(wolf).to receive(:huff).with(at: brick_house).and_call_original
        allow(wolf).to receive(:puff).with(at: brick_house).and_call_original
        described_class.tell(story)
      end

      specify "wolf huffed and puffed but couldn't blow the brick house down" do
        expect(wolf).to have_received(:huff).with(at: brick_house).twice
        expect(wolf).to have_received(:puff).with(at: brick_house).twice
        expect(third_pig.house).to be_truthy
      end
    end
  end
end
