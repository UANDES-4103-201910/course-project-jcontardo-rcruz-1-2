class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to home_show_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_user_session_path
  end
end
