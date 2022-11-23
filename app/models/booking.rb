class Booking < ApplicationRecord
  belongs_to :friend_service
  belongs_to :user
end
