class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  respond_to :js, only: [:index]

  def index
    @events =
      if params[:id]
        Event.upcoming
             .where('id < ?', params[:id])
             .limit(15)
      else
        Event.upcoming.limit(20)
      end
  end

  def show
    @event = Event.find_by(slug: params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = 'New event created'
      redirect_to @event
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find_by(slug: params[:id])
  end

  def update
    @event = Event.find_by(slug: params[:id])
    if @event.update_attributes(event_params)
      flash[:success] = 'Event updated'
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    Event.find_by(slug: params[:id]).destroy
    flash[:success] = 'Event deleted'
    redirect_to user_path(current_user)
  end

  private

  def event_params
    params.require(:event).permit(:title, :venue, :date, :description, :picture,
                                  :user_id, :category_id, :latitude, :longitude,
                                  :address)
  end
end
