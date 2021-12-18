class List < ApplicationRecord
  validates :name, uniqueness: true, length: { minimum: 1 }
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
end
