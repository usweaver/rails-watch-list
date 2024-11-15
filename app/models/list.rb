class List < ApplicationRecord
  has_one_attached :image
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews
  validates :name, length: { minimum: 1 }, uniqueness: true
end
