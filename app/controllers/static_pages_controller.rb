class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @events = Event.where(id: Event.pluck(:id).sample(15))
  end
end
