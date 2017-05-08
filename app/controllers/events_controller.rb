class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :concatenate_date, only: [:create, :update]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @events =
      if params[:location].present?
        Event.near(params[:location]).filter(params.slice(:by_category, :by_title)).paginate(page: params[:page])
      else
        Event.filter(params.slice(:by_category, :by_title, :start_date, :end_date)).upcoming.paginate(page: params[:page])
      end
    @hash = Gmaps4rails.build_markers(@events) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
      marker.infowindow render_to_string(partial: '/events/infowindow', locals: { object: event })
    end
    gon.mapHash = @hash
  end

  def show
    @event = Event.find(params[:id])
    @hash = Gmaps4rails.build_markers(@event) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
      marker.infowindow event.venue
    end
    gon.mapHash = @hash
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
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:success] = 'Event updated'
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    Cloudinary::Api.delete_resources(@event.picture.public_id)
    @event.destroy
    flash[:success] = 'Event deleted'
    redirect_to user_path(current_user)
  end

  private

  def event_params
    params.require(:event).permit(:title, :venue, :date_and_time, :description,
                                  :picture, :user_id, :category_id, :address)
  end

  # Before actions

  def concatenate_date
    params[:event][:date_and_time] = (params[:date] + ' ' + params[:time_submit]).to_datetime
  end

  def correct_user
    @event = Event.find(params[:id])
    redirect_to(root_url) unless current_user == @event.creator
  end
end
