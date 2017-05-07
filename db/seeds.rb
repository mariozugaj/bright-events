# Users
User.create!(name: 'Mario Zugaj',
             email: 'mariozugaj@gmail.com',
             password: 'Qw1ITlgILwyWgfWbPhK9vNeVofGKnDC8',
             confirmed_at: Time.zone.now)

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
