require "test_helper"

module ThreeLittlePigs
  class StoryTest < Minitest::Test
    attr_reader :chapters

    def test_tells_the_whole_story
      # NOTE: I had trouble replicating spec/lib/story_spec.rb in Minitest
      # so this test is just a litmus test to make sure the story can be told
      # from beginning to end without erroring.
      suppress_output { Story.tell }
    end
  end
end
