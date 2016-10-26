require "spec_helper"

module ThreeLittlePigs
  module Story
    RSpec.describe OnceUponATime do
      let(:story) { Story.so_far }

      before do
        OnceUponATime.tell(story)
      end

      specify "there were three little pigs" do
        expect(story.first_pig).to be_a(Pig)
        expect(story.second_pig).to be_a(Pig)
        expect(story.third_pig).to be_a(Pig)
      end

      specify "there was a mother pig" do
        expect(story.mother).to be_a(Pig)
        expect(story.mother.children).to \
          eq([story.first_pig, story.second_pig, story.third_pig])
      end

      specify "the pigs lived together in the mother's house" do
        expect(story.mothers_house.occupants).to \
          eq([story.mother, story.first_pig, story.second_pig, story.third_pig])
      end
    end
  end
end
