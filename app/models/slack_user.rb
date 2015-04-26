class SlackUser < ActiveRecord::Base
  validates :slack_id, presence: true, uniqueness: true
  validates :name, presence: true
  validates :profile, presence: true

  serialize :profile, Hash

  def self.from_slack(slack_hash)
    SlackUser.find_by(slack_id: slack_hash['id']) || SlackUser.create_from_slack!(slack_hash)
  end

  def self.create_from_slack!(slack_hash)
    slack_user = SlackUser.new

    slack_user.slack_id = slack_hash['id']

    %W(name deleted color profile is_admin is_owner is_primary_owner is_restricted is_ultra_restricted has_2fa has_files).each do |prop|
      slack_user[prop] = slack_hash[prop]
    end

    slack_user.save!

    return slack_user
  end
end
