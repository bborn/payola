# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :payola_coupon, class: "Payola::Coupon" do
    code { "MyString" }
    percent_off { 1 }
  end
end
