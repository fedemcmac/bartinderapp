class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?
  helper_method :authorize_user
  before_action :set_current_user

  def set_current_user
    @current_user = session[:user_id] ? User.find(session[:user_id]) : nil
  end
  
  def logged_in?
    !!@current_user
  end

  def authorize_user
    if !logged_in?
        flash[:notice] = "you must be logged in to view that page"
        redirect_to login_path
    end
  end

  def welcome
  end

end
