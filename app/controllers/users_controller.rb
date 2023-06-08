class UsersController < ApplicationController
  
  # /users/new => new_user_path
  def new
    @user = User.new
  end
  
  # /users => users_path
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
      flash[:success] = 'success'
    else
      flash.now[:danger] = 'fail'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :introduce, :link)
  end
end
