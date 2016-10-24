Dir["#{__dir__}/**/*.rb"].each { |file| require_relative file }
require "ostruct"

module ThreeLittlePigs
  include Story

  module_function

  def tell_story
    OnceUponATime.tell(story)
    story
  end

  def story
    @story ||= OpenStruct.new
  end
  private_class_method :story
end
