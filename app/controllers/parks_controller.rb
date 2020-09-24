class ParksController < ApplicationController
  before_action :require_login, except: [:show]

  # five star reviews
  def reviews
    @park = Park.find_by(:id => params[:park_id])
    @comments = @park.comments
    @reviews = Park.five_star_reviews
    render :five_star_reviews
  end
    
  def index
      @parks = Park.all
  end

  def show 
    @park = Park.find_by(:id => params[:id])
    @comments = Comment.all
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

