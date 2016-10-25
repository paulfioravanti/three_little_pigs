$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "three_little_pigs"
Dir["#{__dir__}/../lib/**/*.rb"].each { |file| require file }
