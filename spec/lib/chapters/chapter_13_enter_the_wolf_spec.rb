# frozen_string_literal: true

require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe Chapter13EnterTheWolf do
      let(:story) { Story.until_chapter(described_class) }

      before do
        described_class.tell(story)
      end

      specify "a wolf came along" do
        expect(story.wolf).to be_a(Wolf)
      end
    end
  end
end
