class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def destroy
    log_out
    redirect_to '/'
  end
end
