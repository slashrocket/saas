class DashboardController < ApplicationController
  def index
    if params[:search]
      @slack_users = SlackUser.search(params[:search]).order('created_at DESC').page(params[:page])
    else
      @slack_users = SlackUser.page(params[:page])
    end
  end
end
