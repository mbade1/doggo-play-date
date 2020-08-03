class SessionsController < ApplicationController

    def welcome 
    end
    
    def new    
      @user = User.new  
    end
    
    def create
      @user = User.find_by!(:username => params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new
      end
    end

  def facebook_login
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.username = auth['info']['name']
      u.uid = auth['uid']
      u.password = 'Temporary'
      u.family_size = 2
    end
    session[:user] = @user
    redirect_to user_path(@user)
  end

  def destroy
    if current_user
      session.delete :user_id
      redirect_to root_url
    end
  end

  private
 
  def auth
    request.env['omniauth.auth']
  end

  def session_params
    params.require(:user).permit(:username, :password)
  end


end