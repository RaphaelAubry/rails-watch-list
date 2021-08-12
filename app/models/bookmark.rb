class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list, dependent: :destroy

  validates :comment, length: { minimum: 6 }
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :list_id, uniqueness: { scope: :movie_id }
end
