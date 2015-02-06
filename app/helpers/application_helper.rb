module ApplicationHelper
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def teacher?
    current_user.is_teacher? if current_user
  end
end
