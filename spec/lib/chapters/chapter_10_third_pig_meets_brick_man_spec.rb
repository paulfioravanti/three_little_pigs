# frozen_string_literal: true

require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe Chapter10ThirdPigMeetsBrickMan do
      let(:story) { Story.until_chapter(described_class) }
      let(:brick_man) { story.brick_man }

      before { described_class.tell(story) }

      specify "the third little pig met a man with a load of bricks" do
        expect(brick_man).to be_a(Man)
        expect(brick_man.inventory).to eq(Load.of(:bricks))
      end
    end
  end
end
