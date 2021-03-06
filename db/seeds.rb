# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# First delete all data and reset id counter(not necessary, I just like it :))
Comment.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('comments')
Like.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('likes')
Post.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('posts')
Profile.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('profiles')
FriendRequest.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('friend_requests')
UserFriend.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('user_friends')
User.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')

User.create(email: 'jake@email.com', password: 'password', name: 'Jake')
Profile.create(user_id: 1, photo_url: 'https://api.time.com/wp-content/uploads/2017/08/gettyimages-493656728.jpg?w=945&quality=85', bio: 'And a hundred percent reason to remember the shame.')
User.create(email: 'eric@email.com', password: 'password', name: 'Eric')
Profile.create(user_id: 2, photo_url: 'https://api.time.com/wp-content/uploads/2017/08/gettyimages-493656728.jpg?w=945&quality=85', bio: 'And a hundred percent reason to remember the shame.')
User.create(email: 'claire@email.com', password: 'password', name: 'Claire')
Profile.create(user_id: 3, photo_url: 'https://api.time.com/wp-content/uploads/2017/08/gettyimages-493656728.jpg?w=945&quality=85', bio: 'And a hundred percent reason to remember the shame.')
User.create(email: 'zach@email.com', password: 'password', name: 'Zach')
Profile.create(user_id: 4, photo_url: 'https://api.time.com/wp-content/uploads/2017/08/gettyimages-493656728.jpg?w=945&quality=85', bio: 'And a hundred percent reason to remember the shame.')
User.create(email: 'bobby@email.com', password: 'password', name: 'Bobby')
Profile.create(user_id: 5, photo_url: 'https://api.time.com/wp-content/uploads/2017/08/gettyimages-493656728.jpg?w=945&quality=85', bio: 'And a hundred percent reason to remember the shame.')
User.create(email: 'emma@email.com', password: 'password', name: 'Emma')
Profile.create(user_id: 6, photo_url: 'https://api.time.com/wp-content/uploads/2017/08/gettyimages-493656728.jpg?w=945&quality=85', bio: 'And a hundred percent reason to remember the shame.')
User.create(email: 'zoe@email.com', password: 'password', name: 'Zoe')
Profile.create(user_id: 7, photo_url: 'https://api.time.com/wp-content/uploads/2017/08/gettyimages-493656728.jpg?w=945&quality=85', bio: 'And a hundred percent reason to remember the shame.')
User.create(email: 'katy@email.com', password: 'password', name: 'Katy')
Profile.create(user_id: 8, photo_url: 'https://api.time.com/wp-content/uploads/2017/08/gettyimages-493656728.jpg?w=945&quality=85', bio: 'And a hundred percent reason to remember the shame.')
User.create(email: 'tom@email.com', password: 'password', name: 'Tom')
Profile.create(user_id: 9, photo_url: 'https://api.time.com/wp-content/uploads/2017/08/gettyimages-493656728.jpg?w=945&quality=85', bio: 'And a hundred percent reason to remember the shame.')

FriendRequest.create(requestor_id: 2, requestee_id: 1, is_pending: true)
FriendRequest.create(requestor_id: 3, requestee_id: 1, is_pending: true)
FriendRequest.create(requestor_id: 4, requestee_id: 1, is_pending: true)
FriendRequest.create(requestor_id: 5, requestee_id: 1, is_pending: true)
