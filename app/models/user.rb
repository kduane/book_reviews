class User < ApplicationRecord
  has_many :reviews
  validates :username, presence: true

  def recent_reviews
    reviews.order(created_at: :desc)
  end
end
