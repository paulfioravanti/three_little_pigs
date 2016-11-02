require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe EnterTheWolf do
      let(:story) { Story.so_far(until_chapter: described_class) }

      before do
        described_class.tell(story)
      end

      specify "a wolf came along" do
        expect(story.wolf).to be_a(Wolf)
      end
    end
  end
end
