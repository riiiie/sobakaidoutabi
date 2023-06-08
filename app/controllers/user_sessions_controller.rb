class UserSessionsController < ApplicationController
  
  # /login => login_path
  def new; end

  # /login => login_path
  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path
      flash[:success] = 'success'
    else
      flash.now[:danger] = 'fail'
      render :new, status: :unprocessable_entity
    end
  end
  
  # /logout => logout_path
  def destroy
    logout
    redirect_to root_path, status: :see_other
    flash[:success] = 'success'
  end
end
