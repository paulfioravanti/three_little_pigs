require "spec_helper"

module ThreeLittlePigs
  module Story
    RSpec.describe OnceUponATime do
      let(:story) { Story.so_far }
      let(:mother_pig) { story.mother_pig }
      let(:first_pig) { story.first_pig }
      let(:second_pig) { story.second_pig }
      let(:third_pig) { story.third_pig }

      before { OnceUponATime.tell(story) }

      specify "there was a mother pig" do
        expect(mother_pig).to be_a(Pig)
      end

      specify "the mother pig had three little pigs" do
        expect(first_pig).to be_a(Pig)
        expect(second_pig).to be_a(Pig)
        expect(third_pig).to be_a(Pig)

        expect(mother_pig.children).to \
          eq([first_pig, second_pig, third_pig])
      end

      specify "the pigs lived together in the mother's house" do
        expect(mother_pig.house.occupants).to \
          eq([mother_pig, first_pig, second_pig, third_pig])
      end
    end
  end
end
