require "spec_helper"

module ThreeLittlePigs
  module Story
    RSpec.describe PigsLeaveTheHouse do
      let(:story) { Story.so_far(until_chapter: PigsLeaveTheHouse) }

      before { PigsLeaveTheHouse.tell(story) }

      specify "the mother pig did not have much money" do
        expect(story.mother_pig.wealth).to eq(Wealth.level(:low))
      end

      specify "the mother pig sent the three little pigs away" do
        expect(story.mother_pig.house.occupants).to eq([story.mother_pig])
      end
    end
  end
end
