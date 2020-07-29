class CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to park_path(@comment.park_id)
        end
    end

  private
  def comment_params
    params.permit(:comment, :playdate_id, :user_id)
  end
end
#params.require(:park).permit(:name, :location, :hound, :description)
