class PlaydatesController < ApplicationController

    def index
        @parks = Park.all
        @playdate = Playdate.all
    end
    
    def new
        @park = params[:park_id]
        @playdate = Playdate.new
    end

    def create
        @playdate = Playdate.new(playdate_params)
        if @playdate.save!
            redirect_to playdate_path(@playdate)
        else
            render :new
        end
    end

    def show
        @user = current_user
        @playdate = Playdate.find_by(:id => params[:id])
        @park = Park.find_by(:id => params[:id])
        @users = User.all
    end

    private

    def playdate_params
        params.permit(:playdate, :time, :date, :park_id, :user_id)
    end

end

