class AttendanceMailer < ApplicationMailer
  def thank_you(user, event)
    @user = user
    @event = event
    mail to: @user.email, subject: 'Thank you for attending'
  end
end
