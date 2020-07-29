class PlaydatesController < ApplicationController

    def index
        @parks = Park.all
        @playdate = Playdate.all
    end

    def new
        @playdate = Playdate.new
    end

    def create
        @playdate = Playdate.new(playdate_params)
        if @playdate.save
            redirect_to park_path(@playdate.id)
        else
            render :new
        end
    end

    def show
        @playdate = Playdate.find_by(params[:id])
    end


    private

    def playdate_params

    end

end



