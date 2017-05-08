class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    visitor_location = request.safe_location
    @events = Event.near(visitor_location.coordinates, 100).upcoming.limit(13)
  end
end
