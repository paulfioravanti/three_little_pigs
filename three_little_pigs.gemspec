require_relative "lib/three_little_pigs/version"

# rubocop:disable Metrics/BlockLength
# NOTE: Block length can't really be helped here...
Gem::Specification.new do |spec|
  spec.name = "three_little_pigs"
  spec.version = ThreeLittlePigs::VERSION
  spec.authors = ["Paul Fioravanti"]
  spec.email = ["paul.fioravanti@gmail.com"]

  spec.summary = "The Three Little Pigs TDDed"
  spec.description = "The Three Little Pigs TDDed"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this
  # section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"
  else
    raise(
      StandardError,
      "RubyGems 2.0 or newer is required to protect against public gem pushes."
    )
  end

  spec.files =
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.test_files = spec.files.grep(%r{^(spec)/})

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard-rspec", "~> 4.6"
  spec.add_development_dependency "fuubar", "~> 2.2.0"
  spec.add_development_dependency "minitest-reporters", "~> 1.1"
  spec.add_development_dependency "pry-byebug", "~> 3.1"
  spec.add_development_dependency "simplecov", "~> 0.11"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 1.0"
  spec.add_development_dependency "rubocop", "~> 0.46"
  spec.add_development_dependency "rubocop-rspec", "~> 1.9"
  spec.add_development_dependency "guard-rubocop", "~> 1.2"
end
# rubocop:enable Metrics/BlockLength
