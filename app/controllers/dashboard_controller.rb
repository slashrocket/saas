class DashboardController < ApplicationController
  def index
    if params[:search]
      @slack_users = SlackUser.search(params[:search]).order('created_at DESC')
    else
      @slack_users = SlackUser.all
    end
  end
end
