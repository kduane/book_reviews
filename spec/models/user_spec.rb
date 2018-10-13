require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#recent_reviews" do
    it "returns the most recent reviews ordered by creation time" do
      user = User.create!(username: "test_user")

      first_author = Author.create!(name: "Author 1")
      second_author = Author.create!(name: "Author 2")
      third_author = Author.create!(name: "Author 3")

      first_book = Book.create!(title: "Book 1",
        published_at: "2000-10-07", author: first_author)
      second_book = Book.create!(title: "Book 2",
        published_at: "1983-10-07", author: second_author)
      third_book = Book.create!(title: "Book 2",
        published_at: "1992-10-07", author: third_author)

      oldest_review = Review.create!(rating: 1, body: "Great!",
        user: user, book: first_book, created_at: "2012-04-04")
      newest_review = Review.create!(rating: 2, body: "OK",
        user: user, book: second_book, created_at: "2013-07-01")
      middle_review = Review.create!(rating: 3, body: "Terrible!",
        user: user, book: third_book, created_at: "2013-02-12")

      expect(user.recent_reviews).to eq([newest_review, middle_review, oldest_review])
    end
  end
end
