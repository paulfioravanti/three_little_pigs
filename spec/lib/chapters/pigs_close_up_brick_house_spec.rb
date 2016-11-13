require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe PigsCloseUpBrickHouse do
      let(:story) { Story.so_far(until_chapter: described_class) }
      let(:brick_house) { story.third_pig.house }

      before { described_class.tell(story) }

      specify "the door and windows were closed, but the chimney was open" do
        expect(brick_house.door).to be_closed
        expect(brick_house.windows).to be_closed
        expect(brick_house.chimney).to be_open
      end
    end
  end
end
