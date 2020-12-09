class Api::V1::GamesController < ApplicationController

  def index
    games = Game.all
    render json: games, status: :ok
  end

  def create
    if logged_in?
      game = logged_in_user.games.build(game_params)
      if game.save
        render json: game, status: :ok
      else
        render json: game.errors, status: :unprocessable_entity
      end
    else
      render json: {error: "You must be logged in to start a new game."}
    end
  end

  def high_scores
    high_scores = Game.top_scores
    render json: high_scores
  end

  private

  def game_params
    params.require(:game).permit(:score, :user_id)
  end

end