# frozen_string_literal: true

require "simplecov"
require "three_little_pigs"
require "pry-byebug"

# unless ENV["NO_COVERAGE"]
#   unless SimpleCov.running
#     SimpleCov.command_name("RSpec specs")
#     SimpleCov.start do
#       add_group "Libraries", "lib"
#       SimpleCov.minimum_coverage 100
#     end
#   end
# end

RSpec.configure do |config|
  config.filter_run(focus: true)
  config.run_all_when_everything_filtered = true
  config.disable_monkey_patching!
  config.before { allow($stdout).to receive(:puts) }
end
