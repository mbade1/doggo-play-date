class ParksController < ApplicationController
    before_action :require_login

    def index
        @parks = Park.all
    end

    def show 
        @park = Park.find_by(:id => params[:id])
        @playdates = Playdate.all
    end
end
