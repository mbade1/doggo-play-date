class ParksController < ApplicationController
    before_action :require_login

    def index
        @parks = Park.all
    end

    def show 
        @park = Park.find_by(:id => params[:id])
        @playdates = Playdate.all
    end

    def new
        @park = Park.new
    end

    def create
        #info for creating a new park - USE PARAMS!!
    end
end
