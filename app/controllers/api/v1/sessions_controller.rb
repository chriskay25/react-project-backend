class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      token = generate_token({ id: @user.id })
      render json: {
        user: user_serializer(@user),
        jwt: token
      }, status: :ok
    else
      render json: {
        error: "Invalid credentials",
        details: @user.errors.full_messages
      }, status: :unauthorized
    end
  end
 
  def get_current_user
    if logged_in?
      render json: logged_in_user, status: :ok
    else
      render json: {error: "No user is logged in"}, status: :unauthorized
    end
  end

  # def delete

  # end


end
