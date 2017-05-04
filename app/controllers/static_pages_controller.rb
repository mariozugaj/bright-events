class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @events = Event.upcoming.where(id: Event.pluck(:id).sample(14))
  end
end
