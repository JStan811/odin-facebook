class FriendRequestsController < ApplicationController
  def create
    @friend_request = FriendRequest.create(requestor_id: params[:requestor_id], requestee_id: params[:requestee_id], is_pending: params[:is_pending])

    flash[:success] = 'Friend request sent!'
    redirect_back(fallback_location: root_path)
  end
end
