# frozen_string_literal: true
require "forwardable"
# NOTE: `require_relative` done here so that the `Part` class is loaded
# before any of the other house parts that reference it.
require_relative "three_little_pigs/objects/house/part"
Dir["#{__dir__}/three_little_pigs/**/*.rb"].each { |file| require file }

module ThreeLittlePigs
  module_function

  def tell_story
    Story.tell
  end
end
