# every word separated by an underscore needs to be capitalized in the title
module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    # will run if the devise controller is called
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
    # methods are specific to rails 5
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
