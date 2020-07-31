class ParksController < ApplicationController
    before_action :require_login, except: [:show]

    def index
        @parks = Park.all
    end

    def show 
        @park = Park.find_by(:id => params[:id])
        @comments = Comment.all
        @comment = Comment.new
        @users = User.all
    end

    def new
        @park = Park.new
    end

    def create
        @park = Park.new(park_params)
        if @park.save
          flash[:message] = "Your park has been added!"
          redirect_to park_path(@park)
        else
          render :new
        end
    end

    private

    def park_params
        params.require(:park).permit(:name, :location, :hound, :description)
    end
end
