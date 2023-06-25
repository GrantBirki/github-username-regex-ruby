# frozen_string_literal: true

require_relative "lib/version"

Gem::Specification.new do |spec|
  spec.name          = "github-username-regex-ruby"
  spec.version       = GitHubUsernameRegex::Version::VERSION
  spec.authors       = ["Grant Birkinbine"]
  spec.email         = "grant.birkinbine@gmail.com"
  spec.license       = "MIT"

  spec.summary       = "A lightweight Ruby Gem to check if a GitHub username / handle is valid"
  spec.description   = <<~SPEC_DESC
    A lightweight Ruby Gem to check if a GitHub username / handle is valid using regex
  SPEC_DESC

  spec.homepage = "https://github.com/grantbirki/github-username-regex-ruby"
  s.metadata    = {
    "source_code_uri" => "https://github.com/grantbirki/github-username-regex-ruby",
    "documentation_uri" => "https://github.com/grantbirki/github-username-regex-ruby",
    "bug_tracker_uri" => "https://github.com/grantbirki/github-username-regex-ruby/issues"
  }
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0.0")

  spec.files = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]
end
