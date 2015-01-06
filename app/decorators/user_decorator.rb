class UserDecorator < Draper::Decorator
delegate_all
  include Draper::LazyHelpers

  def link_to_messages
    if user_signed_in? && current_user.role == "member"
      link_to("Visit Messages Page", member_sermons_path, class: "btn btn-default btn-lg")
    elsif user_signed_in? && current_user.role == "admin"
      link_to("Visit Messages Page", admin_sermons_path, class: "btn btn-default btn-lg")
    else
      link_to("Visit Messages Page", new_user_session_path, class: "btn btn-default btn-lg")
    end
  end
end
