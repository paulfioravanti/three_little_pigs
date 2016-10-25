Dir["#{__dir__}/**/*.rb"].each { |file| require file }

module ThreeLittlePigs
  module_function

  def tell_story
    Story.tell
  end
end
