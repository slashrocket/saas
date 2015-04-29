class SlackUser < ActiveRecord::Base
  validates :slack_id, presence: true, uniqueness: true
  validates :team_id, presence: true
  validates :name, presence: true
  validates :profile, presence: true

  serialize :profile, Hash

  def self.from_slack(slack_hash, team_hash)
    SlackUser.find_by(slack_id: slack_hash['id']) ||
      SlackUser.create_from_slack!(slack_hash, team_hash)
  end

  def self.create_from_slack!(slack_hash, team_hash)
    slack_user = SlackUser.new

    slack_user.slack_id = slack_hash['id']

    %w(name deleted color profile is_admin is_owner is_primary_owner
       is_restricted is_ultra_restricted has_2fa has_files).each do |prop|
      slack_user[prop] = slack_hash[prop]
    end

    slack_user.team_id = team_hash['team_id']

    slack_user.save!
  end

  def self.search(query)
    query = "%#{query.downcase}%"
    where('name LIKE :query', query: query)
  end
end
