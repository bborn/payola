# frozen_string_literal: true

class AddProductIdToSubscriptionPlans < ActiveRecord::Migration[5.0]
  def change
    add_column :subscription_plans, :product_id, :string
    add_column :subscription_plan_without_interval_counts, :product_id, :string
  end
end
