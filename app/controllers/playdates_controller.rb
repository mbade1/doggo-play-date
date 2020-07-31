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
        @playdate = Playdate.find_by(:id => params[:id])
        @user = @playdate.user.username
        @park = Park.find_by(params[:park_id])
    end

    def edit
        @park = Park.find(params[:park_id])
        @playdate = Playdate.find_by(params[:id])
    end

    def update
        @playdate = Playdate.find_by(params[:id])
        @playdate.update(playdate_params)
        @park = @playdate.park
        flash[:message] = "Your playdate has been updated!"
        redirect_to park_playdate_path(@park, @playdate)
    end

    private

    def playdate_params
        params.require(:playdate).permit(:time, :date, :user_id, :park_id)
    end

end

