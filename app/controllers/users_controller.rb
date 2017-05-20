class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find(params[:id])
    @events = @user.events
                   .includes(:category)
                   .paginate(page: params[:page])
    @header_title = 'Events you created'
  end

  def upcoming_events
    @user = User.find(params[:id])
    @events = @user.upcoming_events
                   .includes(:category)
                   .paginate(page: params[:page])
    @header_title = 'Upcoming events you\'re attending'
    render 'show'
  end

  def past_attended_events
    @user = User.find(params[:id])
    @events = @user.past_attended_events
                   .includes(:category)
                   .paginate(page: params[:page])
    @header_title = 'Events you attended'
    render 'show'
  end
end
