class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'No repeated movie in the same list.' }
  validates :comment, presence: true

  belongs_to :movie
  belongs_to :list
end
