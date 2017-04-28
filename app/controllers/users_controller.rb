class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @events = current_user.events
  end
end
