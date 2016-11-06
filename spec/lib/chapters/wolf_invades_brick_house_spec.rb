require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe WolfInvadesBrickHouse do
      let(:story) { Story.so_far(until_chapter: described_class) }
      let(:wolf) { story.wolf }
      let(:pot) { story.pot }

      before do
        allow(pot).to receive(:<<).with(wolf).and_call_original
        allow(Story).to receive(:kill).with(wolf).and_call_original
        described_class.tell(story)
      end

      specify "the wolf slid into the pot of water and was boiled up" do
        expect(pot).to have_received(:<<).with(wolf)
        expect(Story).to have_received(:kill).with(wolf)
        expect(story.wolf).to be nil
      end
    end
  end
end
