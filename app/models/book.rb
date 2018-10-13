class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews
  validates :title, presence: true
  validates :published_at, presence: true
  validates :author, presence: true
end
