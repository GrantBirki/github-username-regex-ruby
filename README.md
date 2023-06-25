# github-username-regex-ruby

[![test](https://github.com/GrantBirki/github-username-regex-ruby/actions/workflows/test.yml/badge.svg)](https://github.com/GrantBirki/github-username-regex-ruby/actions/workflows/test.yml) [![lint](https://github.com/GrantBirki/github-username-regex-ruby/actions/workflows/lint.yml/badge.svg)](https://github.com/GrantBirki/github-username-regex-ruby/actions/workflows/lint.yml) [![build](https://github.com/GrantBirki/github-username-regex-ruby/actions/workflows/build.yml/badge.svg)](https://github.com/GrantBirki/github-username-regex-ruby/actions/workflows/build.yml) [![release](https://github.com/GrantBirki/github-username-regex-ruby/actions/workflows/release.yml/badge.svg)](https://github.com/GrantBirki/github-username-regex-ruby/actions/workflows/release.yml) [![CodeQL](https://github.com/GrantBirki/github-username-regex-ruby/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/GrantBirki/github-username-regex-ruby/actions/workflows/codeql-analysis.yml)

A lightweight Ruby Gem to check if a GitHub username / handle is valid

## Installation 💎

You can download this Gem from either [RubyGems](https://rubygems.org/gems/github-username-regex-ruby) or [GitHub Packages](https://github.com/GrantBirki/github-username-regex-ruby/pkgs/rubygems/github-username-regex-ruby)

RubyGems (Recommended):

```bash
gem install github-username-regex-ruby
```

> RubyGems [link](https://rubygems.org/gems/github-username-regex-ruby)

## Usage 💻

```ruby
require "github_username_regex_ruby"

# Check if a username is valid
GitHubUsernameRegex.valid?("GrantBirki") # => returns true
GitHubUsernameRegex.valid?("some$bad_username-") # => returns false
```

## Regex ⚙️

The following regex pattern is used to check if a username is valid:

```re
/^[a-z\d](?:[a-z\d]|-(?=[a-z\d])){0,38}$/i
```

> View the regex [here](lib/github_username_regex_ruby.rb)

## Release 🚀

To release a new version of this gem, simply edit the [`lib/version.rb`](lib/version.rb) in this repo. When you commit your changes to `main`, a new version will be automatically released via GitHub Actions to RubyGems and GitHub Packages.
