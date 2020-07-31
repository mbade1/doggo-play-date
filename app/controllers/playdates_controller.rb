class PlaydatesController < ApplicationController

    def index
        @parks = Park.all
        @playdate = Playdate.all
    end
    
    def new
        @park = Park.find(params[:park_id])
        @playdate = Playdate.new
    end

    def create
        @playdate = Playdate.new(playdate_params)
        @park = @playdate.park
        if @playdate.save
            flash[:message] = "Your playdate has been added!"
            redirect_to park_playdate_path(@park, @playdate)
        else
            render :new
        end
    end

    def show
        @user = current_user
        @playdate = Playdate.find_by(:id => params[:id])
        @park = @playdate.park
    end

    def edit
        @playdate = Playdate.find_by(params[:id])
    end

    def update
        @playdate = Playdate.find_by(params[:id])
        @playdate.update(playdate_params)
        flash[:message] = ""
        redirect_to playdate_path(@playdate)
    end

    private

    def playdate_params
        params.require(:playdate).permit(:time, :date, :user_id, :park_id)
    end

end

