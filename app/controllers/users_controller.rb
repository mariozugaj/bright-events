class UsersController < ApplicationController
  def show
    @events = current_user.events
  end
end
