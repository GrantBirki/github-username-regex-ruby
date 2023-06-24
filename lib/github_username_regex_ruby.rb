# frozen_string_literal: true

module GitHubUsernameRegex

  # check if a GitHub username is valid
  # :param username: the username to check (String)
  # :return: true if the username is valid, false if it is invalid (Boolean)
  def self.check(username)
    # if the username is valid, return true
    if username.match(/^[a-z\d](?:[a-z\d]|-(?=[a-z\d])){0,38}$/i)
      return true
    # if the username is invalid, return false
    else
      return false
    end
  # if an error occurs, return false
  rescue StandardError => _e
    return false
  end
end
