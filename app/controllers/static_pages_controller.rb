class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    request.env['REMOTE_ADDR'] = '31.147.121.212' if Rails.env.development?
    visitor_location = request.safe_location
    @events = Event.near(visitor_location.coordinates, 100).upcoming.limit(13)
  end
end
