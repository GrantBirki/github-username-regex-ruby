# frozen_string_literal: true

require "spec_helper"
require_relative "../../lib/github_username_regex_ruby"

describe GitHubUsernameRegex do
  context "#valid?" do
    it "finds a valid username" do
      expect(GitHubUsernameRegex.valid?("GrantBirki")).to eq(true)
      expect(GitHubUsernameRegex.valid?("MonaLisa")).to eq(true)
      expect(GitHubUsernameRegex.valid?("hubot")).to eq(true)
      expect(GitHubUsernameRegex.valid?("sup3r-cool-user123")).to eq(true)
    end

    it "finds a valid username with a dash" do
      expect(GitHubUsernameRegex.valid?("test-user")).to eq(true)
    end

    it "finds an invalid username with a dash at the end" do
      expect(GitHubUsernameRegex.valid?("test-")).to eq(false)
    end

    it "finds an invalid username with a dash at the beginning" do
      expect(GitHubUsernameRegex.valid?("-test")).to eq(false)
    end

    it "finds that a username is invalid due to length" do
      expect(GitHubUsernameRegex.valid?("testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttes")).to eq(false)
    end

    it "finds that a username is invalid due to special characters" do
      expect(GitHubUsernameRegex.valid?("mona!lisa")).to eq(false)
    end

    it "finds that a username is invalid due to double dashes" do
      expect(GitHubUsernameRegex.valid?("mona--lisa")).to eq(false)
    end

    it "finds that a username is invalid due to an underscore" do
      expect(GitHubUsernameRegex.valid?("mona_lisa")).to eq(false)
    end

    it "finds that a username is invalid due to a period" do
      expect(GitHubUsernameRegex.valid?("mona.lisa")).to eq(false)
    end

    it "is given bad input, and catches the error which still returns false" do
      # in this case we pass a boolean instead of a string which will cause an error
      expect(GitHubUsernameRegex.valid?(true)).to eq(false)
    end
  end
end
