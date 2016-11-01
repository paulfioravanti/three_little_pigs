require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe FirstPigBuildsStrawHouse do
      let(:story) { Story.so_far(until_chapter: described_class) }
      let(:first_pig) { story.first_pig }

      before { described_class.tell(story) }

      specify "the first pig built his house of straw" do
        expect(first_pig.house).to be_a(House)
        expect(first_pig.house.building_material).to eq(:straw)
        expect(first_pig.house.occupants).to eq([first_pig])
      end
    end
  end
end
