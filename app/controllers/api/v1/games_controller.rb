class Api::V1::GamesController < ApplicationController

  def index
    games = Game.all
    render json: games, status: :ok
  end

  def create
    if logged_in?
      game = current_user.games.build(game_params)
      if game.save
        render json: game, status: :ok
      else
        render json: game.errors, status: :unprocessable_entity
      end
    else
      render json: {error: "You must be logged in to start a new game."}
    end
  end

  private

  def game_params
    params.require(:game).permit(:score, :user_id)
  end

end