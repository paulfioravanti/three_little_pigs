# frozen_string_literal: true
require "spec_helper"

module ThreeLittlePigs
  module Chapters
    RSpec.describe OnceUponATime do
      let(:story) { Story.beginning }

      before { described_class.tell(story) }

      specify "there were three little pigs" do
        expect(story.first_pig).to be_a(Pig)
        expect(story.second_pig).to be_a(Pig)
        expect(story.third_pig).to be_a(Pig)
      end
    end
  end
end
