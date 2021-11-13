class UserFriendsController < ApplicationController
  def create
    @user_friend_receiver = UserFriend.new(user_id: params[:user_id], friend_id: params[:friend_id])

    @user_friend_sender = UserFriend.new(user_id: params[:friend_id], friend_id: params[:user_id])

    @friend_request = FriendRequest.find(params[:friend_request])

    @user_friend_receiver.save

    @user_friend_sender.save

    @friend_request.update_column(:is_pending, false)

    flash[:success] = 'Friend request accepted!'

    redirect_back(fallback_location: root_path)
  end
end
