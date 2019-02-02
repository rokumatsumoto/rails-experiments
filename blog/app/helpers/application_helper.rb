# frozen_string_literal: true

module ApplicationHelper
  def current_user_name
    current_user.email.split('@')[0].capitalize
  end
end
