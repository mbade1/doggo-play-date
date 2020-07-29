class CommentsController < ApplicationController


  def create
    @comment = Comment.create(comment_params)
    if @comment
    end
  end

  private
  def comment_params
    params.permit(:comment, :park_id, :user_id)
  end
end