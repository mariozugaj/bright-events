class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    # visitor location
    request.env['REMOTE_ADDR'] = '31.147.118.68' if Rails.env.development?
    visitor_location = request.location

    @visitor_city = visitor_location.city
    @visitor_city_and_country = "#{@visitor_city}, #{visitor_location.country}"

    # listing 15 events near visitor location
    @events = Event.includes(:creator, :category)
                   .near(visitor_location.coordinates, 50)
                   .upcoming
                   .limit(15)

    # browse by popular categories
    @categories = Category.pluck(:name, :id)
    @popular_categories = Event.popular_categories
  end
end
