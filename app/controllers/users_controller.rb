class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
  end

  def edit
    respond_to do |format|
      format.js { render layout: false }
    end
  end
end
