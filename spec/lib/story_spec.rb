require "spec_helper"

module ThreeLittlePigs
  RSpec.describe Story do
    describe ".tell" do
      before do
        allow(Chapters::OnceUponATime).to receive(:tell)
      end

      it "tells the story" do
        described_class.tell
        expect(Chapters::OnceUponATime).to have_received(:tell)
      end
    end
  end
end
