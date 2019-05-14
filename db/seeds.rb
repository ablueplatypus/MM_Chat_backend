# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Message.destroy_all
# Chatroom.destroy_all

# puts "Creating Users"
#
# User.create(username: "Matt", password_digest: "12345abc")
# User.create(username: "Mahmoud", password_digest: "12345abc")
# User.create(username: "Joyce", password_digest: "12345abc")
# User.create(username: "Tony", password_digest: "12345abc")
# User.create(username: "Rachel", password_digest: "12345abc")
# User.create(username: "Mike", password_digest: "12345abc")

puts "Creating chatroom"
Chatroom.create(room_name: "friends chat")
#
# puts "Creating messages"
# Message.create(content: "First Message", user_id: 5, chatroom_id: 2)
# Message.create(content: "wait what?", user_id: 4, chatroom_id: 2)
# Message.create(content: "who added me to this?", user_id: 18, chatroom_id: 2)
# Message.create(content: "Hey guys!!!", user_id: 7, chatroom_id: 2)
# Message.create(content: "wts up?!", user_id: 8, chatroom_id: 2)
# Message.create(content: "I promise I'll be back", user_id: 9, chatroom_id: 2)
# Message.create(content: "pending", user_id: 10, chatroom_id: 2)
#
# puts "users joining chatroom 2"
# Chatroom.first.users << User.find_by(username: "Matt")
# Chatroom.first.users << User.find_by(username: "Mahmoud")
# Chatroom.first.users << User.find_by(username: "Joyce")
# Chatroom.first.users << User.find_by(username: "Tony")
# Chatroom.first.users << User.find_by(username: "Rachel")
# Chatroom.first.users << User.find_by(username: "Mike")
