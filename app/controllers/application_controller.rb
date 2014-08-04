class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  rescue_from CanCan::AccessDenied do |exception|
    render :file => "public/401.html", :status => :unauthorized, :layout => false
  end

  # sends user to their profile after sign_in
  def after_sign_in_path_for(resource_or_scope)
    user_path(current_user.id)
  end

  protected
  # adds the role parameter to the User model through devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :role
    devise_parameter_sanitizer.for(:account_update) << :role
  end
end
