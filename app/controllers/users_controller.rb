class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  
  # /users/new => new_user_path
  def new
    @user = User.new
  end
  
  # /users => users_path
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
      flash[:success] = t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :introduce, :link)
  end
end
