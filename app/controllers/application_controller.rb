class ApplicationController < ActionController::API

  def user_serializer(user)
    user_games = user.games.map do |g|
      {
        id: g.id,
        score: g.score,
        user_id: g.user_id
      }
    end 
    
      {
        id: user.id,
        username: user.username,
        password: user.password,
        games: user_games
      }
  end

  def logged_in_user
    @logged_in_user ||= User.find_by(id: decode_token_and_get_user_id)
  end 

  def logged_in?
    !!logged_in_user
  end

  def generate_token(payload)
    token = JWT.encode(payload, 'token')
  end

  def decode_token_and_get_user_id
    JWT.decode(request.headers['Authorization'], 'token')[0]["id"]
  end

end