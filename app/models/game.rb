class Game < ApplicationRecord
  belongs_to :user
  scope :top_scores, -> { order(score: :desc).limit(5) }
end
