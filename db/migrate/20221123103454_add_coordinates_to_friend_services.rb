class AddCoordinatesToFriendServices < ActiveRecord::Migration[7.0]
  def change
    add_column :friend_services, :latitude, :float
    add_column :friend_services, :longitude, :float
  end
end
