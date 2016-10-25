require "spec_helper"

RSpec.describe ThreeLittlePigs do
  describe ".tell_story" do
    before do
      allow(ThreeLittlePigs::Story).to receive(:tell)
    end

    it "tells the story" do
      described_class.tell_story
      expect(ThreeLittlePigs::Story).to have_received(:tell)
    end
  end
end
