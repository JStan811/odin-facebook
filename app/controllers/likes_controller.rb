class LikesController < ApplicationController
  def create
    @like = Like.new(post_id: params[:post_id], user_id: params[:user_id])

    @like.save

    redirect_to current_user
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy

    redirect_to current_user
  end
end
