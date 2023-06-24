# frozen_string_literal: true

require_relative "lib/version"

Gem::Specification.new do |spec|
  spec.name          = "github-username-regex-ruby"
  spec.version       = GHUR::VERSION
  spec.authors       = ["Grant Birkinbine"]
  spec.email         = "grant.birkinbine@gmail.com"
  spec.license       = "MIT"

  spec.summary       = "A lightweight Ruby Gem to check if a GitHub username / handle is valid"
  spec.description   = <<~SPEC_DESC
    A lightweight Ruby Gem to check if a GitHub username / handle is valid using regex
  SPEC_DESC

  spec.homepage = "https://github.com/grantbirki/github-username-regex-ruby"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.1.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]
end
