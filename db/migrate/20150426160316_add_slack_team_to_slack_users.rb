class AddSlackTeamToSlackUsers < ActiveRecord::Migration
  def change
    add_column :slack_users, :team_id, :string, null: false
  end
end
