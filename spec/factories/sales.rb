FactoryBot.define do
  factory :sale, class: Payola::Sale do
    association :product

    email { 'test@example.com' }
    stripe_token { 'tok_test' }
    currency { 'usd' }
    amount { 100 }
  end
end
