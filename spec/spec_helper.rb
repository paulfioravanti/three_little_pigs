require "simplecov"
if ENV["TRAVIS"]
  require "codeclimate-test-reporter"
  CodeClimate::TestReporter.start
end
require "three_little_pigs"
require "pry-byebug"


RSpec.configure do |config|
  config.before { allow($stdout).to receive(:puts) }
end
