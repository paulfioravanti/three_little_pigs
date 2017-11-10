# frozen_string_literal: true

require "simplecov"
require "three_little_pigs"
require "pry-byebug"

unless ENV["NO_COVERAGE"]
  SimpleCov.command_name("rspec specs")
  SimpleCov.start do
    SimpleCov.minimum_coverage 100
  end
end

RSpec.configure do |config|
  config.filter_run(focus: true)
  config.run_all_when_everything_filtered = true
  config.disable_monkey_patching!
  config.before { allow($stdout).to receive(:puts) }
end
