# Users
User.create!(name: 'Mario Zugaj',
             email: 'mariozugaj@gmail.com',
             password: 'Qw1ITlgILwyWgfWbPhK9vNeVofGKnDC8',
             confirmed_at: Time.zone.now)

User.create!(name: 'Martina Zugaj',
             email: 'martinazugaj5@gmail.com',
             password: 'Qw1ITlgILwyWgfWbPhK9vNeVofGKnDC8',
             confirmed_at: Time.zone.now)

10.times do |n|
  name = Faker::Name.name
  email = "example-#{n + 1}@example.com"
  password = 'ILwyWgfWbPhK9vNeVofGKnD'
  User.create!(name: name,
               email: email,
               password: password,
               confirmed_at: Time.zone.now)
end

# Categories
categories = [
  'Auto, Boat & Air', 'Business & Professional', 'Charity & Causes',
  'Community & Culture', 'Family & Education', 'Fashion & Beauty',
  'Film, Media & Entertainment', 'Food & Drink',
  'Government & Politics', 'Health & Wellness',
  'Hobbies & Special Interest', 'Home & Lifestyle',
  'Music', 'Other', 'Performing & Visual Arts',
  'Religion & Spirituality', 'Science & Technology',
  'Seasonal & Holiday', 'Sports & Fitness', 'Travel & Outdoor'
]

categories.each do |category|
  Category.create!(name: category)
end

# Event

user1 = User.first
user2 = User.find(2)

15.times do
  title = Faker::Beer.name
  description = Faker::Lorem.paragraphs(8).join("\r\n\n")
  venue = Faker::GameOfThrones.city
  address = "#{Faker::Address.street_address}, #{Faker::Address.city}"
  picture = Rails.root.join("app/assets/images/hero-#{rand(3) + 1}.jpg").open
  date = Faker::Date.forward(60)
  category = rand(19) + 1

  user1.events.create!(title: title,
                       description: description,
                       venue: venue,
                       address: address,
                       date_and_time: date,
                       picture: picture,
                       category_id: category)
end

35.times do
  title = Faker::Beer.name
  description = Faker::Lorem.paragraphs(7).join("\r\n\n")
  venue = Faker::GameOfThrones.city
  address = "#{Faker::Address.street_address}, #{Faker::Address.city}"
  picture = Rails.root.join("app/assets/images/hero-#{rand(3) + 1}.jpg").open
  date = Faker::Date.forward(60)
  category = rand(19) + 1

  user2.events.create!(title: title,
                       description: description,
                       venue: venue,
                       address: address,
                       date_and_time: date,
                       picture: picture,
                       category_id: category)
end

# Attend events

events = Event.all
users = User.all

25.times do
  users.each do |user|
    user.attend(events[rand(events.size - 1) + 1])
  end
end
