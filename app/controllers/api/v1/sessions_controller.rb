class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      render json: @user
    else
      render json: {
        error: "Invalid credentials",
        details: @user.errors.full_messages
      }, status: :unauthorized
    end
  end

  # def delete

  # end


end
