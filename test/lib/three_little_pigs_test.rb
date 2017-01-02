# frozen_string_literal: true
require "test_helper"

class ThreeLittlePigsTest < Minitest::Test
  attr_reader :tell_mock

  def setup
    # represents the return value from Story.tell
    @tell_mock = Minitest::Mock.new.expect(:call, :tell_retval, [])
  end

  def test_tell_story
    ThreeLittlePigs::Story.stub(:tell, tell_mock) do
      ThreeLittlePigs.tell_story
    end
    tell_mock.verify
  end
end
