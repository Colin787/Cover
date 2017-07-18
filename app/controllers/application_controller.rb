#This is required; Do not delete

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

protected

  def current_user
    # @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user = User.find(9)
  end
  helper_method :current_user
end
