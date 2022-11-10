class List < ApplicationRecord
  validates :name, presence: true
  has_many :bookmarks
  validates_associated :bookmarks
  validates :name, uniqueness: true
  has_many :movies, through: :bookmarks, dependent: :destroy
end
