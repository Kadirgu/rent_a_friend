class FriendService < ApplicationRecord
  validates :email, presence: true
  belongs_to :user
  has_one_attached :photo
end
