class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(user)
    recipes_path
  end

  def auth_user
  redirect_to root_path unless user_signed_in?
  end

end
