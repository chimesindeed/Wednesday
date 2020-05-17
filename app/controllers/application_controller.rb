#
class ApplicationController < ActionController::Base
  def logged_in?
    unless session[:user_id]
      redirect_to 'butterrolls#main', notice: "You must be logged in to access this area"
    end
  end

  def current_user
    User.where(id: session[:user_id]).first # scope method
  end
    helper_method :current_user
    helper_method :logged_in?
end
