class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @events = Event.order(date: :desc)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new

  end
end
