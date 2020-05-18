#
class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    render :text => auth_hash.inspect
  end
  
  def create1
  #CREATE METHOD HIT
    user = User.find_by_email(params[:email])
    if user
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        #USER EXISTS AND HAS BEEN AUTHENTICATED
        redirect_to '/', notice: 'Logged in!'
      else
        redirect_to '/', notice: 'password incorrect, please retry'
      #USER EXISTS BUT NOT AUTHENTICATED
      end
    else
    #Incorrect email
      redirect_to '/', notice: 'email not found! Try again with different email or create an account.'
    end
  end
  
  def logout
  end
  
  def destroy
    session.delete :user_id
    redirect_to '/'
  end
  
  def failure
  end
end
