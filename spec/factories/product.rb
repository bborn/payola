# frozen_string_literal: true

FactoryBot.define do
  factory :product, class: 'Product' do
    name { 'Foo' }
    sequence(:permalink) { |n| "foo-#{n}" }
    price { 100 }
  end
end
