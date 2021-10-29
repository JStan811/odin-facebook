class FriendRequest < ApplicationRecord
  validates :requestor, presence: true
  validates :requestee, presence: true
  validates :is_pending, presence: true

  belongs_to :requestor, class_name: "User"
  belongs_to :requestee, class_name: "User"
end
