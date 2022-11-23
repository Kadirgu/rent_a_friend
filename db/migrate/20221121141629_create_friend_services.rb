class CreateFriendServices < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_services do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :phone_number
      t.string :gender
      t.string :category
      t.date :availability
      t.string :interests
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
