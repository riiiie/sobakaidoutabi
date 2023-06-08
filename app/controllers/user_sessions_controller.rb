class UserSessionsController < ApplicationController
  
  # /login => login_path
  def new; end

  # /login => login_path
  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path
    else
      render :new
    end
  end
  
  # /logout => logout_path
  def destroy
    logout
    redirect_to root_path
  end
end
