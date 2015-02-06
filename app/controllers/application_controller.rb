class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def check_user
    if get_user.nil?
      redirect_to sessions_login_path
    end
  end

  def teacher?
    get_user.is_teacher?
  end

  def student?
    get_user.is_student?
  end

  private def get_user
    User.find(session[:user_id])
  end
end
