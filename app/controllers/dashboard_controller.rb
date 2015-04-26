class DashboardController < ApplicationController
  def index
    @users = Slack.users_list
  end
end
