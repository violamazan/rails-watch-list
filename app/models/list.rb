class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # order of the above associations must be bookmarks first

  validates :name, presence: true
  validates :name, uniqueness: true
end
