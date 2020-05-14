# /app/controllers/users_controller
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email.downcase!
    if @user.save
      redirect_to '/', notice: 'Account created successfully!'
    else
      render :new, notice: "Couldn't create account!"
    end
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:first_name, :email, :password)
  end
end
