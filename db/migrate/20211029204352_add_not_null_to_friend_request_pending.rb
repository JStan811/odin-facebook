class AddNotNullToFriendRequestPending < ActiveRecord::Migration[6.1]
  def change
    change_column_null :friend_requests, :is_pending, false
  end
end
