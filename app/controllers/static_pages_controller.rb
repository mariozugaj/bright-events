  class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    # visitor location
    request.env['REMOTE_ADDR'] = '185.137.18.54' if Rails.env.development?
    visitor_location = request.location

    @visitor_city = visitor_location.city
    @visitor_city_and_country = "#{@visitor_city}, #{visitor_location.country}"

    # listing 15 events near visitor location
    @events = Event.near(visitor_location.coordinates, 50)
                   .upcoming.includes(:creator, :category)
                   .limit(15)

    # browse by popular categories
    @categories = Category.pluck(:name, :id)
    @popular_categories = Event.popular_categories
  end
end
