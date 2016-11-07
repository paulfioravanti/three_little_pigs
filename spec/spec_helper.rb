require "simplecov"
require "three_little_pigs"
require "pry-byebug"

RSpec.configure do |config|
  config.before { allow($stdout).to receive(:puts) }
end
