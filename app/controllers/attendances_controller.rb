class AttendancesController < ApplicationController

  def create
    @event = Event.find(params[:attended_event_id])
    current_user.attend(@event)
    respond_to do |format|
      format.js
      format.html { redirect_to @event }
    end
  end

  def destroy
    @event = Attendance.find(params[:id]).attended_event
    current_user.unattend(@event)
    respond_to do |format|
      format.js
      format.html { redirect_to @event }
    end
  end
end
