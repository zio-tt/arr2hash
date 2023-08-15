# frozen_string_literal: true

require_relative "lib/arr2hash/version"

Gem::Specification.new do |spec|
  spec.name = "arr2hash"
  spec.version = Arr2hash::VERSION
  spec.authors = ["terao_tomohiro_44"]
  spec.email = ["zio.tt.dev@gmail.com"]


  spec.summary = "Converts a 2D array to an array of hashes"
  spec.description = "The arr2hash gem provides a simple way to convert a 2D array into an array of hashes. The first row of the 2D array is used as the keys, and the subsequent rows are converted to values, creating an array of hashes. This is especially useful for converting structured data like CSV."
  spec.homepage = "https://github.com/zio-tt/arr2hash"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/zio-tt/arr2hash"
  spec.metadata["changelog_uri"] = "https://github.com/zio-tt/arr2hash"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
