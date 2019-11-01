class CommentsController < ApplicationController
  before_action :authenticate_account!

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.account = current_account
    @comment.save

    redirect_to @commentable
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
