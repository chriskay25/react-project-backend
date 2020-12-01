class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :highScore
  has_many :games

  def highScore
    object.games.length > 0 ? object.games.sort {|g| g.score}.first.score : 0
  end
end
