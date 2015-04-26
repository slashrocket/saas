namespace :slack_users do
  desc 'Imports all users from Slack API (but skips existing ones)'
  task import_all: :environment do
    slack_team = Slack.team_info['team']
    all_users = Slack.users_list['members']

    all_users.each { |user_info| SlackUser.from_slack(user_info, slack_team) }
  end
end
