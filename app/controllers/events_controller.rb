class EventsController < ApplicationController
  def index
    @events = Event.order(date: :desc)
  end

  def show
    @event = Event.find(params[:id])
  end
end
