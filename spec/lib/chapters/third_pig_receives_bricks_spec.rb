# frozen_string_literal: true

require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe ThirdPigReceivesBricks do
      let(:story) { Story.until_chapter(described_class) }
      let(:brick_man) { story.brick_man }
      let(:third_pig) { story.third_pig }

      before { described_class.tell(story) }

      specify "the man gives the third little pig a load of bricks" do
        expect(third_pig.inventory).to eq(Load.of(:bricks))
        expect(brick_man.inventory).to be_empty
      end
    end
  end
end
