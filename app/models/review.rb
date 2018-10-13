class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates :rating, presence: true
  validates :body, presence: true
  validates :book, presence: true
  validates :user, presence: true
end
