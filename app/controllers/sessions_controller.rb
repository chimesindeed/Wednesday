# 
class SessionsController < ApplicationController  
  def set_user_session
    session[:current_user_id] = @user.id
  end

  def verified
    session[current_user_id]
  end
end
