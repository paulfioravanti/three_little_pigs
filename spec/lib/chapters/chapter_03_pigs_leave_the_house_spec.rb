# frozen_string_literal: true

require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe Chapter03PigsLeaveTheHouse do
      let(:story) { Story.until_chapter(described_class) }
      let(:mother_pig) { story.mother_pig }

      before { described_class.tell(story) }

      specify "the mother pig did not have enough to keep her children" do
        expect(mother_pig.wealth).to_not eq(Wealth.level(:enough))
      end

      specify "the mother pig sent the three little pigs away" do
        expect(mother_pig.house.occupants).to eq([mother_pig])
      end
    end
  end
end
