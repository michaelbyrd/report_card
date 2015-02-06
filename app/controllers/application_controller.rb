class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :teacher?, :student?


  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def check_user
    if current_user.nil?
      redirect_to sessions_login_path
    end
  end

  def teacher?
    current_user.is_teacher?
  end

  def student?
    current_user.is_student?
  end

end
