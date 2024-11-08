FactoryBot.define do
  factory :sale, class: Payola::Sale do
    email { "test@example.com" }
    association :product
    stripe_token { "tok_test" }
    currency { "usd" }
    amount {
      100
    }
  end
end
