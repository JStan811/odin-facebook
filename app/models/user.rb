class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_friends
  has_many :friends, through: :user_friends
  has_many :sent_friend_requests, foreign_key: :requestor_id, class_name: "FriendRequest"
  has_many :received_friend_requests, foreign_key: :requestee_id, class_name: "FriendRequest"
  has_one :profile
  has_many :likes
  has_many :comments
end
