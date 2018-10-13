FactoryBot.define do
  factory :review do
    body "A++++ would read again!!"
    rating 10

    book
    user
  end
end
