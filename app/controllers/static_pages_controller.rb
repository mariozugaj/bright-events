class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @events = Event.upcoming.near(request.location)
  end
end
