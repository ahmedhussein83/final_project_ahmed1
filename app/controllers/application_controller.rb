class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
  before_action :authenticate_user!
   protected
     def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation,:first_name, :last_name, :date_of_birth,:phone_number) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit({ roles: [] }, :email, :password, :username) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({ keys: [:username] }, :email, :password, :password_confirmation,:first_name, :last_name,:date_of_birth,:phone_number) }

   end
end
