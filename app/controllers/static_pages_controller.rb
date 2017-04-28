class StaticPagesController < ApplicationController
  def home
    @events = Event.where(id: Event.pluck(:id).sample(15))
  end
end
