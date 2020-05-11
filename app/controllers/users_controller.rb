# /app/controllers/users_controller
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.new(user_params)
    @user.save
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
  def current_user
    current_user = User.find_by_id()
  end
end