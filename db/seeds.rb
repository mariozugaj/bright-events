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

#Event

users = User.all
15.times do
  title = Faker::Friends.quote
  description = Faker::Lorem.sentences(4)
  venue = "#{Faker::Address.street_address}, #{Faker::Address.city}"
  picture = "event-#{rand(4)}.jpeg"
  date = Faker::Date.forward(60)
  longitude = Faker::Address.longitude
  latitude = Faker::Address.latitude
  users.each do |user|
    user.events.create!(title: title,
                        description: description,
                        venue: venue,
                        date: date,
                        picture: picture,
                        longitude: longitude,
                        latitude: latitude)
  end
end
