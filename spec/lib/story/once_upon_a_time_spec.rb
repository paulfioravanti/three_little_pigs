require "spec_helper"

module ThreeLittlePigs
  module Story
    RSpec.describe OnceUponATime do
      let(:story) { Story.beginning }

      before do
        OnceUponATime.tell(story)
      end

      specify "there were three little pigs" do
        expect(story.fifer).to \
          be_a(Pig).and have_attributes(name: "Fifer")
        expect(story.fiddler).to \
          be_a(Pig).and have_attributes(name: "Fiddler")
        expect(story.practical).to \
          be_a(Pig).and have_attributes(name: "Practical")
      end

      specify "there was the little pigs' mother" do
        expect(story.mother).to \
          be_a(Pig).and have_attributes(name: "Mother")
        expect(story.mother.children).to \
          include(story.fifer, story.fiddler, story.practical)
      end

      specify "they lived together in the mother's house" do
        expect(story.mothers_house.occupants).to \
          include(story.mother, story.fifer, story.fiddler, story.practical)
      end
    end
  end
end
