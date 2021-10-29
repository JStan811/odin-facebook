# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# First delete all data and reset id counter(not necessary, I just like it :))
FriendRequest.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('friend_requests')
UserFriend.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('user_friends')
User.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')

User.create(email: 'jake@email.com', password: 'password', name: 'Jake')
User.create(email: 'eric@email.com', password: 'password', name: 'Eric')
User.create(email: 'claire@email.com', password: 'password', name: 'Claire')
