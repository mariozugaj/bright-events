class AttendancesController < ApplicationController

  def create
    @event = Event.find(params[:attending_event_id])
    current_user.attend(@event)
    AttendanceMailer.thank_you(current_user, @event).deliver_later
    respond_to do |format|
      format.js
      format.html { redirect_to @event }
    end
  end

  def destroy
    @event = Attendance.find(params[:id]).attending_event
    current_user.unattend(@event)
    respond_to do |format|
      format.js
      format.html { redirect_to @event }
    end
  end
end
