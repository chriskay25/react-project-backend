class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :highScore
  has_many :games

  def highScore
    object.games.sort {|game| game.score}.first.score
  end
end
