# frozen_string_literal: true

module GitHubUsernameRegex
  def self.check(username)
    if username.match(/^[a-z\d](?:[a-z\d]|-(?=[a-z\d])){0,38}$/i)
      return true
    else
      return false
    end
  end
end
