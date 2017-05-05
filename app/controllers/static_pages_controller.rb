class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @events = Event.upcoming(14)
  end
end
