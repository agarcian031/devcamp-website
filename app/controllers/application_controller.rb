class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # will run if the devise controller is called
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # methods are specific to rails 5
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
