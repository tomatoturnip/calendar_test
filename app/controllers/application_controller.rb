class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_layout
    if controller_path.starts_with?("admin/")
      "admin_layout"
    elsif devise_controller?
      "authentication"
    else
      "application"
    end
  end


end
