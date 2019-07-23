# frozen_string_literal: true

require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe Chapter09SecondPigBuildsStickHouse do
      let(:story) { Story.until_chapter(described_class) }
      let(:second_pig) { story.second_pig }

      before { described_class.tell(story) }

      specify "the second pig built his house of sticks" do
        expect(second_pig.house).to be_a(House)
        expect(second_pig.house.building_material).to eq(:sticks)
        expect(second_pig.house.occupants).to eq([second_pig])
        expect(second_pig.inventory).to be_empty
      end
    end
  end
end
