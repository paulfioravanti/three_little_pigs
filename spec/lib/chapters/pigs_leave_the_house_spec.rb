require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe PigsLeaveTheHouse do
      let(:story) { Story.so_far(until_chapter: described_class) }

      before { described_class.tell(story) }

      specify "the mother pig did not have much money" do
        expect(story.mother_pig.wealth).to eq(Wealth.level(:low))
      end

      specify "the mother pig sent the three little pigs away" do
        expect(story.mother_pig.house.occupants).to eq([story.mother_pig])
      end
    end
  end
end
