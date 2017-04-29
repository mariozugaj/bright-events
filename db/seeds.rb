# Users
User.create!(name: 'Mario Zugaj',
             email: 'mariozugaj@gmail.com',
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

users = User.all
15.times do
  title = Faker::Beer.name
  description = Faker::Lorem.sentences(4)
  venue = "#{Faker::Address.street_address}, #{Faker::Address.city}"
  picture = Rails.root.join("app/assets/images/event-#{rand(4)}.jpg").open
  date = Faker::Date.forward(60)
  category = rand(19) + 1
  longitude = Faker::Address.longitude
  latitude = Faker::Address.latitude
  users.each do |user|
    user.events.create!(title: title,
                        description: description,
                        venue: venue,
                        date: date,
                        picture: picture,
                        category_id: category,
                        longitude: longitude,
                        latitude: latitude)
  end
end
