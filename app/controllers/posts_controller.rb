class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(whitelisted_post_params)

    if @post.save
      redirect_to current_user
    else
      render :new
    end
  end

  private

  def whitelisted_post_params
    params.require(:post).permit(:user_id, :body)
  end
end
