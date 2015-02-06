class SessionsController < ApplicationController
  def login
    if request.post?
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to sessions_login_path
  end
end
