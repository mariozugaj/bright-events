class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @user = current_user || User.find_by(slug: params[:id])
    @events = User.find_by(slug: params[:id]).events
  end
end
