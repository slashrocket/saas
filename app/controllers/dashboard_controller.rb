class DashboardController < ApplicationController
  def index
    @slack_users = SlackUser.all
  end
end