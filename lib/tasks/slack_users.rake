namespace :slack_users do
  desc 'Imports all users from Slack API (but skips existing ones)'
  task import_all: :environment do
    # Would prefer Slack.team_info but it's not yet implemented
    # slack_team = Slack.team_info['team']
    slack_team = Slack.auth_test
    all_users = Slack.users_list['members']

    all_users.each { |user_info| SlackUser.from_slack(user_info, slack_team) }
  end
end
