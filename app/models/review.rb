class Review < ApplicationRecord
  belongs_to :user
  belongs_to :faculdade
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
