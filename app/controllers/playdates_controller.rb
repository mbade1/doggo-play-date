class PlaydatesController < ApplicationController
  def dates
    @display_day = params[:date]
    @day = Playdate.current_date(@display_day)
    render :dates_playdates
  end
  
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
    @park = Park.find_by(:id => params[:park_id])
  end

  def edit
    @park = Park.find_by(:id => params[:park_id])
    @playdate = Playdate.find_by(:id => params[:id])
  end

  def update
    @playdate = Playdate.find_by(:id => params[:id])
    @playdate.update(playdate_params)
    @park = @playdate.park
    flash[:message] = "Your playdate has been updated!"
    redirect_to park_playdate_path(@park, @playdate)
  end    

  def destroy
    @playdate = Playdate.find_by(:id => params[:id]) 
    @playdate.delete
    @park = Park.find_by(:id => params[:park_id])
    flash[:message] = "Playdate has been deleted!"
    redirect_to park_path(@park)
  end

  private

  def playdate_params
    params.require(:playdate).permit(:time, :date, :user_id, :park_id)
  end

end

