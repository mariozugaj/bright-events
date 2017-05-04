class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_filter :store_action

  def store_action
    return unless request.get?
    if request.path != '/auth/login' &&
       request.path != '/auth/register/cmon_let_me_in' &&
       request.path != '/auth/secret/new' &&
       request.path != '/auth/secret/edit' &&
       request.path != '/auth/verification' &&
       request.path != '/auth/logout' &&
       !request.xhr?
      store_location_for(:user, request.fullpath)
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
