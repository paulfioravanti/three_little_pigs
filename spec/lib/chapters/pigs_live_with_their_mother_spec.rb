# frozen_string_literal: true
require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe PigsLiveWithTheirMother do
      let(:story) { Story.until_chapter(described_class) }
      let(:mother_pig) { story.mother_pig }
      let(:first_pig) { story.first_pig }
      let(:second_pig) { story.second_pig }
      let(:third_pig) { story.third_pig }

      before { described_class.tell(story) }

      specify "the three little pigs had a mother" do
        expect(mother_pig).to be_a(Pig)
        expect(mother_pig.children).to eq([first_pig, second_pig, third_pig])
      end

      specify "the pigs lived together in the mother's house" do
        expect(mother_pig.house.occupants).to \
          eq([mother_pig, first_pig, second_pig, third_pig])
      end
    end
  end
end
