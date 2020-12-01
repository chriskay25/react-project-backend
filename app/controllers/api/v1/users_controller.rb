class Api::V1::UsersController < ApplicationController
  wrap_parameters :user, include: [:username, :password]

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
      token = generate_token({ id: @user.id })
      render json: {
        user: user_serializer(@user), 
        jwt: token
      }, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end 
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end


end