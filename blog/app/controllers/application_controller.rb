class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true

  def after_sign_in_path_for(resource)
    stored_location_for(:redirect) || stored_location_for(resource) || root_path
  end
end
