class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :is_driver?,:is_passenger?
  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit( :role, :email, :password, :password_confirmation ,:phone_number,:full_name)
    end
  end
  def is_driver?
   current_user.role == "driver"
  end

  def is_passenger?
     current_user.role == "passenger"
  end
end
