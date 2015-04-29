module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Confirms a logged-in user.
  def logged_in_user
    return false unless logged_in?

    flash[:alert] = 'Please log in.'
    redirect_to login_path
  end
end
