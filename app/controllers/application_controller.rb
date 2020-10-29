class ApplicationController < ActionController::API

  def user_serializer(user)
    {
      id: user.id,
      username: user.username,
      password: user.password
    }
  end

  def logged_in_user
    User.find_by(id: decode_token_and_get_user_id)
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