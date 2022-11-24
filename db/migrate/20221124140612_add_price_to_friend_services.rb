class AddPriceToFriendServices < ActiveRecord::Migration[7.0]
  def change
    add_column :friend_services, :price, :float
  end
end
