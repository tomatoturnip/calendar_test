class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :set_layout


  def after_sign_in_path_for(user)
    if user.role == "admin"
      admin_root_path
    else
      member_root_path
    end
  end

  def after_sign_out_path_for(user)
    root_path
  end

  def set_layout
    if controller_path.starts_with?("admin/")
      "application"
    elsif controller_path.starts_with?("member/")
      "member"
    else
      "landing_page"
    end
  end
end
