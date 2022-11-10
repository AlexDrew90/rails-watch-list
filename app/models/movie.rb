class Movie < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :overview, presence: true
  has_many :bookmarks
  validates_associated :bookmarks
end
