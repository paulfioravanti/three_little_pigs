# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"
require "rspec/core/rake_task"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

RSpec::Core::RakeTask.new(:spec)

task :tests_and_specs, [:coverage] do |_task, args|
  if args.coverage == "NO_COVERAGE"
    ENV["NO_COVERAGE"] = "true"
  end
  Rake::Task[:test].invoke
  Rake::Task[:spec].invoke
end

task default: :tests_and_specs
