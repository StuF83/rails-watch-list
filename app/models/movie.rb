class Movie < ApplicationRecord
  has_and_belongs_to_many :lists

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :overview, presence: true
  validates :overview, uniqueness: true
end
