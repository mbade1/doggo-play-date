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
    if @comment.save
      flash[:message] = "Your review has been added!"
      redirect_to park_path(@park)
    else
      render :new
    end
  end

  def edit
    @park = Park.find_by(:id => params[:park_id])
    @comment = Comment.find_by(:id => params[:id])
  end

  def update
    @comment = Comment.find_by(:id => params[:id])
    @park = Park.find_by(:id => params[:park_id])
    if @comment.update(comment_params)
      @park = @comment.park
      flash[:message] = "Your comment has been updated!"
      redirect_to park_path(@park)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find_by(:id => params[:id]) 
    @comment.destroy
    @park = Park.find_by(:id => params[:park_id])
    flash[:message] = "Comment has been deleted!"
    redirect_to park_path(@park)
  end

  private
  
  def comment_params
    params.require(:comment).permit(:comment, :park_id, :user_id, :park_review)
  end
end