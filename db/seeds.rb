# Destroy all existing data

Rails.application.eager_load!
ApplicationRecord.descendants.each(&:destroy_all)

# Users
User.create!(name: 'John Doe',
             email: 'john.doe@example.com',
             password: 'Qw1ITlgILwyWgfWbPhK9vNeVofGKnDC8',
             confirmed_at: Time.zone.now)

30.times do
  name = Faker::Name.name
  User.create!(name: name,
               email: Faker::Internet.email(name),
               password: Faker::Internet.password(25),
               confirmed_at: Time.zone.now)
end

# Categories
CATEGORIES = [
  { name: 'Auto, Boat & Air', picture: 'categories/auto_boat_air.jpg' },
  { name: 'Business & Professional', picture: 'categories/business.jpg' },
  { name: 'Charity & Causes', picture: 'categories/charity_causes.jpg' },
  { name: 'Community & Culture', picture: 'categories/community_culture.jpg' },
  { name: 'Family & Education', picture: 'categories/education.jpg' },
  { name: 'Fashion & Beauty', picture: 'categories/fashion_beauty.jpg' },
  { name: 'Film, Media & Entertainment', picture: 'categories/film_media.jpg' },
  { name: 'Food & Drink', picture: 'categories/food_drink.jpg' },
  { name: 'Government & Politics', picture: 'categories/government_politics.jpg' },
  { name: 'Health & Wellness', picture: 'categories/health_wellness.jpg' },
  { name: 'Hobbies & Special Interest', picture: 'categories/hobbies.jpg' },
  { name: 'Home & Lifestyle', picture: 'categories/home_lifestyle.jpg' },
  { name: 'Music', picture: 'categories/music.jpg' },
  { name: 'Other', picture: 'categories/other.png' },
  { name: 'Performing & Visual Arts', picture: 'categories/performing_visual.jpg' },
  { name: 'Religion & Spirituality', picture: 'categories/spirituality.jpg' },
  { name: 'Science & Technology', picture: 'categories/science_tech.jpg' },
  { name: 'Seasonal & Holiday', picture: 'categories/seasonal_holiday.jpg' },
  { name: 'Sports & Fitness', picture: 'categories/sport_fitness.jpg' },
  { name: 'Travel & Outdoor', picture: 'categories/travel_outdoor.jpg' }
]

CATEGORIES.each do |category|
  Category.create!(category)
end

# Events

EVENTS =
  [
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'Royal Palace Amsterdam Koninklijk Paleis Amsterdam',
      address: 'Dam, 1012 HG Amsterdam, Netherlands',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: DateTime.tomorrow
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'EYE Film Museum',
      address: 'IJpromenade 1, 1031 KT Amsterdam, Netherlands',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: Faker::Date.forward(15000)
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'Koninklijk Theater Carré',
      address: 'Amstel 115 /125, 1018 EM Amsterdam, Netherlands',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: Faker::Date.forward(15000)
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'The Orpheum',
      address: '601 Smithe St, Vancouver, BC V6B 3L4, Canada',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: DateTime.tomorrow
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'English Bay Beach',
      address: 'M, Vancouver, BC V6C 3C1, Canada',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: Faker::Date.forward(15000)
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'Museum of Vancouver MOV',
      address: '1100 Chestnut St, Vancouver, BC V6J 3J9, Canada',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: Faker::Date.forward(15000)
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'Castle Hotel',
      address: 'Gardiner Row, Gt Denmark Street, Rotunda, Dublin 1, D01 R640, Ireland',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: DateTime.tomorrow
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'Dublin Castle',
      address: 'Dame St, Dublin 2, Ireland',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: Faker::Date.forward(15000)
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'National Gallery of Ireland',
      address: 'Merrion Square W, Dublin 2, Ireland',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: Faker::Date.forward(15000)
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'Det Kongelige Bibliotek',
      address: 'Black Diamond, Søren Kierkegaards Plads 1, 1221 København K, Denmark',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: DateTime.tomorrow
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'Folketeatret',
      address: 'Nørregade 39, 1165 København K, Denmark',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: Faker::Date.forward(15000)
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'Copenhagen Opera House',
      address: 'Ekvipagemestervej 1, 1438 København K, Denmark',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: Faker::Date.forward(15000)
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'Museum of Broken Relationships',
      address: 'Ćirilometodska ul. 2, 10000, Zagreb',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: DateTime.tomorrow
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'National and University Library in Zagreb',
      address: 'Hrvatske Bratske Zajednice 4, 10000, Zagreb',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: Faker::Date.forward(15000)
    },
    {
      title: Faker::Lorem.sentence(5),
      description: Faker::Lorem.paragraphs(10).join("\n\n"),
      venue: 'Muzej Mimara',
      address: 'Rooseveltov trg 5, 10000, Zagreb',
      remote_picture_url: Faker::LoremPixel.image('1000x500', false),
      user_id: 1,
      category_id: rand(1..CATEGORIES.count),
      date_and_time: Faker::Date.forward(15000)
    }
  ]

EVENTS.each do |event|
  Event.create!(event)
end

Event.all.each do |event|
  user_ids = User.ids.sample(rand(5..User.count))

  user_ids.each do |id|
    Attendance.create(attending_event: event, attendee_id: id)
  end
end
