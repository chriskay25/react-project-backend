class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :highScore, :highScores
  has_many :games

  def highScore
    object.games.length > 0 ? object.games.sort_by {|g| g.score}.last.score : 0
  end

  def highScores
    sorted_games = object.games.sort_by { |game| game.score }.reverse
    sorted_games.first(5)
  end
end
