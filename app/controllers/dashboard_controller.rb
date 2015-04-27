class DashboardController < ApplicationController
  before_action :logged_in_user, except: [:metrics]
  def index
    if params[:search]
      @slack_users = SlackUser.search(params[:search]).order('created_at DESC')
    else
      @slack_users = SlackUser.all
    end
  end
  
  def details
      @user = SlackUser.find(params[:id])
      return render partial: 'details.js.erb'
  end
end
