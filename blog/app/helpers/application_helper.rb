module ApplicationHelper
  def current_user_name
    current_user.email.split('@')[0]
  end
end
