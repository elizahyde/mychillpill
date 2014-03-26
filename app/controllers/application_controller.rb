class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!


  def index
  end

# The following 5 lines of code render all ajax calls with devise views to have no layout
  layout :layout

  private

  def layout
    request.xhr? && devise_controller? ? false : "application"
  end


  before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :first_name
  end


end
