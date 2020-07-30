class CommentsController < ApplicationController



  def current_park
    if session[:park_id].present?
      park = Park.find_by(:park_id => session[:park_id])
    end
  end

  
  def create
    binding.pry
    @comment = Comment.new(comment_params)
    if @comment.save!
      redirect_to park_path(@park)
    else
      render :'parks/new'
    end
  end

  private
  def comment_params
    params.permit(:comment, :park_id, :user_id)
  end
end