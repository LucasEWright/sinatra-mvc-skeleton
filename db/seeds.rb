# require 'faker'

# User.delete_all
# Channel.delete_all
# Subscription.delete_all

# users = 100.times.map do
#   User.create!( :first_name => Faker::Name.first_name,
#                 :last_name  => Faker::Name.last_name,
#                 :email      => Faker::Internet.email,
#                 :password   => 'password' )
# end

# channels = ["Telemundo", "Unimas ", "Azteca 13", "Mexiquense",
#  "ESPN", "Fox Sports", "NBC Sports", "Big Ten Network", "Nickelodeon"].map do |name|
#   Channel.create!(:name            => name,
#                   :callsign        => name[0..2].upcase,
#                   :price_per_month => Faker::Commerce.price)
# end

# users.each do |user|
#   user_channels = channels.sample(rand(2..4))
#   user_channels.each do |channel|
#     Subscription.create!(user: user,
#                          channel: channel)
#   end
# end

# # =================

# require 'faker'


# users = 10.times.map do
#   User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email, password:'password' )
# end

# posts = 50.times.map do
#   Post.create!(title: Faker::Hacker.say_something_smart, content: Faker::Hacker.say_something_smart, user_id: rand(1..10))
# end

# comments = 50.times.map do
#   Comment.create!(content: Faker::Hacker.say_something_smart, post_id: rand(1..50), user_id: rand(1..10))
# end