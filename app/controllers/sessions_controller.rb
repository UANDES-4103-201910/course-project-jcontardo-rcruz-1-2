class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to home_show_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to edit_user_registration_path
  end
end
