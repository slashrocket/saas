class LoginController < ApplicationController
  before_action :logged_in_user, except: [:index]
  def index
  end
  
  def edit
    @user = User.find(current_user.id)
  end
  
  def update
    @user = User.find(current_user.id)
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      return redirect_to dashboard_path
    else
      flash[:alert] = "Failed to change password"
      render 'edit'
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end