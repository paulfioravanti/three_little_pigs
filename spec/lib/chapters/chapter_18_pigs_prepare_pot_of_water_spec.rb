# frozen_string_literal: true

require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe Chapter18PigsPreparePotOfWater do
      let(:story) { Story.until_chapter(described_class) }
      let(:pot) { story.pot }
      let(:water) { pot.water }
      let(:fireplace) { story.third_pig.house.fireplace }
      # value represents degrees celsius
      let(:boiling_point) { 100 }

      before { described_class.tell(story) }

      specify "the pigs hung a pot of water on the fireplace and made a fire" do
        expect(pot.contents).to eq([water])
        expect(fireplace.hearth).to eq(pot)
        expect(fireplace).to be_lit
        expect(water.temperature).to eq(boiling_point)
      end
    end
  end
end
