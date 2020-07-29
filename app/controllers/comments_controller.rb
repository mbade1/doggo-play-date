class CommentsController < ApplicationController


  def create
    @comment = Comment.create(comment_params)
    render json: @comment, status: 201
  end

  private
  def comment_params
    params.permit(:comment, :park_id, :user_id)
  end
end