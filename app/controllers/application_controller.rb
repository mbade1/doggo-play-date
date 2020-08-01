class ApplicationController < ActionController::Base

    def current_user
      if session[:user_id].present?
        user = User.find_by(:id => session[:user_id]) || user = User.find_by(:id => session[:user_id])
      end
    end

    def require_login
      unless current_user
        redirect_to root_url
      end
    end

    helper_method :current_user, :require_login
end
