require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#recent_reviews" do
    it "returns the most recent reviews ordered by creation time" do
      it "returns the most recent reviews ordered by creation time" do
        user = FactoryBot.create(:user)

        oldest_review = FactoryBot.create(:review, user: user, created_at: "2012-04-04")
        newest_review = FactoryBot.create(:review, user: user, created_at: "2013-07-01")
        middle_review = FactoryBot.create(:review, user: user, created_at: "2013-02-12")

        expect(user.recent_reviews).to eq([newest_review, middle_review, oldest_review])
      end
    end
  end
end
