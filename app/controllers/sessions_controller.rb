class SessionsController < ApplicationController
    def welcome #Home Page
    end
    
    def new      
    end
    
    def create
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        @user.save
        session[:user] = @user
        redirect_to user_path(@user)
    else
        render :new
    end
  end

  def destroy
    if current_user
      session.delete :user_id
      redirect_to root_url
    end
  end



end