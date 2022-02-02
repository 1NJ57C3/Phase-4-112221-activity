class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :review, length: 10..300
end
