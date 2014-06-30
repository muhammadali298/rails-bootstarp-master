class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?


  protected


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation) }
  end

  #def devise_parameter_sanitizer
  #  if resource_class == User
  #    User::ParameterSanitizer.new(User, :user, params)
  #  else
  #    super # Use the default one
  #  end
  #end
end