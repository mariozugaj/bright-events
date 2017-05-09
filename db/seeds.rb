# Users
User.create!(name: 'Mario Zugaj',
             email: 'mariozugaj@gmail.com',
             password: 'Qw1ITlgILwyWgfWbPhK9vNeVofGKnDC8',
             confirmed_at: Time.zone.now)

# Categories
categories = [
  { name: 'Auto, Boat & Air', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347755/categories/auto_boat_air.jpg' },
  { name: 'Business & Professional', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347518/categories/business.jpg' },
  { name: 'Charity & Causes', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347551/categories/charity_causes.jpg' },
  { name: 'Community & Culture', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347610/categories/community_culture.jpg' },
  { name: 'Family & Education', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347511/categories/education.jpg' },
  { name: 'Fashion & Beauty', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347553/categories/fashion_beauty.jpg' },
  { name: 'Film, Media & Entertainment', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347682/categories/film_media.jpg' },
  { name: 'Food & Drink', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347738/categories/food_drink.jpg' },
  { name: 'Government & Politics', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347748/categories/government_politics.jpg' },
  { name: 'Health & Wellness', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347702/categories/health_wellness.jpg' },
  { name: 'Hobbies & Special Interest', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347715/categories/hobbies.jpg' },
  { name: 'Home & Lifestyle', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494348156/categories/home_lifestyle.jpg' },
  { name: 'Music', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347573/categories/music.jpg' },
  { name: 'Other', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347640/categories/other.png' },
  { name: 'Performing & Visual Arts', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347615/categories/performing_visual.jpg' },
  { name: 'Religion & Spirituality', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347676/categories/spirituality.jpg' },
  { name: 'Science & Technology', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347677/categories/science_tech.jpg' },
  { name: 'Seasonal & Holiday', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347691/categories/seasonal_holiday.jpg' },
  { name: 'Sports & Fitness', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494347735/categories/sport_fitness.jpg' },
  { name: 'Travel & Outdoor', picture: 'http://res.cloudinary.com/dspsea599/image/upload/v1494348168/categories/travel_outdoor.jpg' }
]

categories.each do |category|
  Category.create!(name: category[:name], picture: category[:picture])
end
