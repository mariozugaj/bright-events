# Users
User.create!(name: 'Mario Zugaj',
             email: 'mariozugaj@gmail.com',
             password: 'Qw1ITlgILwyWgfWbPhK9vNeVofGKnDC8',
             confirmed_at: Time.zone.now)

# Categories
categories = [
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

categories.each do |category|
  Category.create!(name: category[:name], picture: category[:picture])
end
