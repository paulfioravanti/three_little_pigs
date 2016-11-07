require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :tests_and_specs do
  Rake::Task[:spec].invoke
end

task :default => :tests_and_specs
