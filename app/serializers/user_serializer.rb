class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :highScore
  has_many :games

  def highScore
    object.games.length > 0 ? object.games.sort_by {|g| g.score}.last.score : 0
  end
end
