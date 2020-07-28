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

  def destroy
    if current_user
      session.delete :user_id
      redirect_to root_url
    end
  end

end