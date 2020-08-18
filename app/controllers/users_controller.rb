class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def show
    @user = User.find_by(:id => params[:id])    
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :family_size)
  end

end
