class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_login

  def check_login
    if session[:user_id] == nil
      redirect_to "/login"
    else
      @user = User.find(session[:user_id])
    end
  end
end
