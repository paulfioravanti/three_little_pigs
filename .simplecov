# frozen_string_literal: true

# Only run coverage when running spec suite outside of Guard
unless ENV["NO_COVERAGE"]
  unless SimpleCov.running
    # NOTE: command_name seemingly required for proper sending of code coverage
    # to Code Climate
    SimpleCov.command_name("Unit tests")
    SimpleCov.start do
      add_filter "/test/"
      add_filter "/spec/"
      SimpleCov.minimum_coverage 100
    end
  end
end
