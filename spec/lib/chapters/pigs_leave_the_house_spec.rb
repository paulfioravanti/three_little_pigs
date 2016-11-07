require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe PigsLeaveTheHouse do
      let(:story) { Story.so_far(until_chapter: described_class) }
      let(:mother_pig) { story.mother_pig }

      before { described_class.tell(story) }

      specify "the mother pig did not have much money" do
        expect(mother_pig.wealth).to eq(Wealth.level(:not_enough))
      end

      specify "the mother pig sent the three little pigs away" do
        expect(mother_pig.house.occupants).to eq([mother_pig])
      end
    end
  end
end
