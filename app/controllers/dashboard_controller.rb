class DashboardController < ApplicationController
  before_action :logged_in_user
  def index
    if params[:search]
      @slack_users = SlackUser.search(params[:search]).order('created_at DESC')
    else
      @slack_users = SlackUser.all
    end
  end
end
