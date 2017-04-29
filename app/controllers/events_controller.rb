class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = Event.order(date: :desc)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:notice] = 'New event created'
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :venue, :date, :description, :picture,
                                  :user_id, :category_id)
  end
end
