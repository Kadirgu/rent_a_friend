# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

FriendService.delete_all

FriendService.create(title: "Walk your dog", description: "I will take your dog for a nice walk", first_name:"Jasper", last_name: "Klose", age: "20", gender: "Male", phone_number: "437584395", email: "klosejasper@gmail.com", category: "outside", availability: "december", interests: "walking a dog")

FriendService.create(title: "Go out for dinner", description: "Nice dinner", first_name:"Jasper", last_name: "Klose", age: "20", gender: "Male", phone_number: "437584395", email: "klosejasper@gmail.com", category: "outside", availability: "december", interests: "walking a dog")

FriendService.create(title: "Go swimming", description: "dfiojg ifgjf gjd opsdg sfdk", first_name:"Jasper", last_name: "Klose", age: "20", gender: "Male", phone_number: "437584395", email: "klosejasper@gmail.com", category: "outside", availability: "december", interests: "walking a dog")

FriendService.create(title: "Have drinks", description: "I love alcohol", first_name:"Jasper", last_name: "Klose", age: "20", gender: "Male", phone_number: "437584395", email: "klosejasper@gmail.com", category: "outside", availability: "december", interests: "walking a dog")
