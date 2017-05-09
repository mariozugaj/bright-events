  class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    request.env['REMOTE_ADDR'] = '185.137.18.54' if Rails.env.development?
    visitor_location = request.location
    @events = Event.near(visitor_location.coordinates, 50).upcoming.limit(15)
    @visitor_city = visitor_location.city
    @visitor_city_and_country = "#{@visitor_city}, #{visitor_location.country}"
    @categories = Category.pluck(:name, :id)
    @popular_categories = Event.includes(:category)
                               .upcoming
                               .max_by(7) { |event| event.attendees.count }
                               .map(&:category)
  end
end
