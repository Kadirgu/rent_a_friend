User.destroy_all
FriendService.destroy_all

user_one = User.create(email: "test@gmail.com", password: "123456")
