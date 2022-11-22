class FriendService < ApplicationRecord
  validates :email, presence: true
end
