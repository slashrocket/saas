require 'slack'

Slack.configure do |config|
  config.token = ENV['slack_token']
end

Slack.auth_test
