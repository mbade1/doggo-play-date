class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @park = Park.find_by(:id => params[:park_id])
  end 


  def current_park
    if session[:park_id].present?
      park = Park.find_by(:park_id => session[:park_id])
    end
  end

  
  def create
    @comment = Comment.new(comment_params)
    @park = @comment.park
    if @comment.save!
      redirect_to park_path(@park)
    else
      render :new
    end
  end






  private
  def comment_params
    params.require(:comment).permit(:comment, :park_id, :user_id)
  end
end