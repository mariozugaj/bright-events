class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  respond_to :html
  respond_to :js, only: [:created_events,
                         :upcoming_events,
                         :past_attended_events]

  def show
    @user = User.find_by(slug: params[:id])
    @events = @user.events
  end

  def created_events
    @events = current_user.events
  end

  def upcoming_events
    @events = current_user.upcoming_events
  end

  def past_attended_events
    @events = current_user.past_attended_events
  end
end
