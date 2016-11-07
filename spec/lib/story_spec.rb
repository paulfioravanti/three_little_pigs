require "spec_helper"

module ThreeLittlePigs
  RSpec.describe Story do
    describe ".tell" do
      let(:chapters) { Chapters.all }

      before do
        chapters.each do |chapter, text|
          allow(chapter).to receive(:tell)
          allow(described_class).to receive(:puts).with(green(text))
        end
        described_class.tell
      end

      it "tells the whole story" do
        chapters.each do |chapter, text|
          expect(chapter).to have_received(:tell)
          expect(described_class).to have_received(:puts).with(green(text))
        end
      end
    end

    def green(text)
      "\e[32m#{text}\e[0m"
    end
  end
end
