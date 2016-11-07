require "spec_helper"

RSpec.describe ThreeLittlePigs do
  describe ".tell_story" do
    before do
      allow(described_class::Story).to receive(:tell)
      described_class.tell_story
    end

    it "tells the story" do
      expect(described_class::Story).to have_received(:tell)
    end
  end
end
