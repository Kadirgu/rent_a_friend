class AddLocationToCreateFriendsServices < ActiveRecord::Migration[7.0]
  def change
    add_column :friend_services, :location, :string
  end
end
