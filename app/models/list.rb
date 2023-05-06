class List < ApplicationRecord
  has_and_belongs_to_many :lists

  validates :name, uniqueness: true
  validates :name, presence: true
end
