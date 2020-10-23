class ApplicationController < ActionController::API

  def current_user
    user = User.first
  end 

  def logged_in?
    true
  end

end