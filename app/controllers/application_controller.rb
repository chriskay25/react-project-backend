class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in? 

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end 

  def logged_in?
    !!session[:user_id]
  end 

  def redirect_if_not_logged_in
    if !logged_in?
      flash[:message] = "You must be logged in to view that page."
      redirect_to root_path
    end 
  end 

  def authorized?
    if current_user.id != params[:id].to_i
      flash[:message] = "You are not authorized to view that page."
      redirect_to user_path(current_user) 
    end
  end 

end
