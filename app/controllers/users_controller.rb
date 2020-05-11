# /app/controllers/users_controller
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email.downcase!
    if @user.save
      flash[:notice] = 'Account created successfully!'
    else flash.now.alert = "Couldn't create account."
    render :new
    end
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
