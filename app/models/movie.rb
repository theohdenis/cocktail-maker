class Movie < ApplicationRecord
  validates :title, uniqueness: true, length: { minimum: 1 }
  validates :overview, length: { minimum: 1 }
  has_many :bookmarks
  has_many :lists, through: :bookmarks
end
