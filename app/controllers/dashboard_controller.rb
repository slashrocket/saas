class DashboardController < ApplicationController
  def index
    @slack_users = SlackUser.page(params[:page])
  end
end
