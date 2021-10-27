# frozen_string_literal: true

FactoryBot.define do
  factory :subscription_plan do
    sequence(:name) { |n| "Foo #{n}" }
    sequence(:stripe_id) { |n| "foo-#{n}" }
    amount { 100 }
    interval { 'month' }
    interval_count { 1 }
    product_id { '' }

    callback(:after_build, :after_create) do |plan|
      next unless plan.name.present? && plan.product_id.blank?

      plan.product_id = Stripe::Product.create({ name: plan.name })[:id]
    end
  end

  factory :subscription_plan_without_interval_count do
    sequence(:name) { |n| "Foo Without Interval #{n}" }
    sequence(:stripe_id) { |n| "foo-without-interval-#{n}" }
    amount { 100 }
    interval { 'month' }
    product_id { '' }

    callback(:after_build, :after_create) do |plan|
      next unless plan.name.present? && plan.product_id.blank?

      plan.product_id = Stripe::Product.create({ name: plan.name })[:id]
    end
  end
end
