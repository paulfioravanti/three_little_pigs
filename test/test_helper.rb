# frozen_string_literal: true

require "simplecov"
require "three_little_pigs"
require "minitest/autorun"
require "minitest/mock"
require "minitest/reporters"
Minitest::Reporters.use!
require "pry-byebug"

unless ENV["NO_COVERAGE"]
  unless SimpleCov.running
    SimpleCov.start do
      # add_filter "/test/"
      # add_filter "/spec/"
      SimpleCov.minimum_coverage 100
    end
  end
end

# REF: https://gist.github.com/moertel/11091573
# rubocop:disable Lint/RescueException
# NOTE: This method only temporarily rescues from Exception before re-raising.
def suppress_output
  begin
    original_stderr = $stderr.clone
    original_stdout = $stdout.clone
    $stderr.reopen(File.new("/dev/null", "w"))
    $stdout.reopen(File.new("/dev/null", "w"))
    retval = yield
  rescue Exception => exception
    $stdout.reopen(original_stdout)
    $stderr.reopen(original_stderr)
    raise exception
  ensure
    $stdout.reopen(original_stdout)
    $stderr.reopen(original_stderr)
  end
  retval
end
# rubocop:enable Lint/RescueException
