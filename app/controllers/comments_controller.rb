class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @post = params[:post]
  end

  def create
    @comment = Comment.new(whitelisted_comment_params)

    if @comment.save
      redirect_to current_user
    else
      render :new
    end
  end

  private

  def whitelisted_comment_params
    params.require(:comment).permit(:post_id, :user_id, :body)
  end
end
