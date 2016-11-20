require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe ThirdPigBuildsBrickHouse do
      let(:story) { Story.until_chapter(described_class) }
      let(:third_pig) { story.third_pig }

      before { described_class.tell(story) }

      specify "the third pig built his house of bricks" do
        expect(third_pig.house).to be_a(House)
        expect(third_pig.house.building_material).to eq(:bricks)
        expect(third_pig.house.occupants).to eq([third_pig])
        expect(third_pig.inventory).to be_empty
      end
    end
  end
end
