class CreateFriendServices < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_services do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :phone_number
      t.string :email
      t.string :gender
      t.string :category
      t.string :availability
      t.string :interests
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end

