class AddSlackTeamToSlackUsers < ActiveRecord::Migration
  def change
    add_column :slack_users, :slack_team, :string
  end
end
