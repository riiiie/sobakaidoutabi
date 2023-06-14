class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  
  # /login => login_path
  def new; end

  # /login => login_path
  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path
      flash[:success] = t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new, status: :unprocessable_entity
    end
  end
  
  # /logout => logout_path
  def destroy
    logout
    redirect_to root_path, status: :see_other
    flash[:success] = t('.success')
  end
end
