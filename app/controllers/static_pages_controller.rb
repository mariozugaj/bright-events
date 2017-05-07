class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @events = Event.near(request.location).upcoming.limit(13)
  end
end
