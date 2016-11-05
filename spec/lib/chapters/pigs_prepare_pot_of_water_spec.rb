require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe PigsPreparePotOfWater do
      let(:story) { Story.so_far(until_chapter: described_class) }
      let(:pot) { story.pot }
      let(:water) { pot.water }
      let(:fireplace) { story.third_pig.house.fireplace }
      let(:boiling_point) { 100 } # °C

      before do
        described_class.tell(story)
      end

      specify "the pigs hung a pot of water on the fireplace and made a fire" do
        expect(pot.contents).to eq([water])
        expect(fireplace.hearth).to eq(pot)
        expect(fireplace).to be_lit
        expect(water.temperature).to eq(boiling_point)
      end
    end
  end
end
