# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

#create Users
# 5.times do
#   user = User.new(
#     username: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: Faker::Lorem.characters(10)
#     )
#   user.skip_confirmation!
#   user.save!
# end
# users = User.all
# puts "5 users created"

#Create Lists
# 15.times do
#   list = List.create!(
#     user: users.sample,
#     title: Faker::Lorem.sentence,
#     description: Faker::Lorem.paragraph
#     )
# end
# puts "15 lists created"
lists = List.all

# 50.times do
#   item = Item.create!(
#     list: lists.sample,
#     name: Faker::Lorem.sentence
#     )
# end
# puts "50 items created"


100.times do
  item = Item.create!(
    list: lists.sample,
    name: Faker::Lorem.sentence,
    created_at: Time.now - 10.days
    )
end
puts "50 older items created"

puts "Seed finished"
