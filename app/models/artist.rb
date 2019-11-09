class Artist < ApplicationRecord
  validates :name, presence: true
  validates :spotify_id, presence: true
  validates :spotify_url, presence: true

  has_many :albums

  scope :by_genre,->(genre) { where("'#{genre}' = ANY (genres)")}
end
