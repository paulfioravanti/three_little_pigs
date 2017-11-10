# frozen_string_literal: true

group :red_green_refactor, halt_on_fail: true do
  guard :rake,
        task: :tests_and_specs,
        task_args: ["NO_COVERAGE"],
        run_on_start: false do

    # Minitest files
    watch(%r{^test/(.*)\/?test_(.*)\.rb$})
    watch(%r{^lib/(.*/)?([^/]+)\.rb$}) { |m| "test/#{m[1]}test_#{m[2]}.rb" }
    watch(%r{^test/test_helper\.rb$}) { "test" }

    # RSpec files
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$}) { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch("spec/spec_helper.rb") { "spec" }
  end

  guard :rubocop,
        all_on_start: false,
        cli: ["--display-cop-names", "--format", "fuubar"] do
    watch(/.+\.rb$/)
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  end
end
