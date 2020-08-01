class SessionsController < ApplicationController

    def welcome 
    end
    
    def new    
      @user = User.new  
    end
    
    def create
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(current_user.id)
      else
        flash.now[:message] = "Please fill in all fields correctly."
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
    session[:user_id] = @user.id
    redirect_to user_path(current_user)
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


end