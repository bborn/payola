module Payola
  class CancelSubscription
    def self.call(subscription, options = {})
      secret_key = Payola.secret_key_for_sale(subscription)
      if options[:at_period_end] == true
        Stripe::Subscription.update(subscription.stripe_id, {cancel_at_period_end: true}, secret_key)
      else
        Stripe::Subscription.delete(subscription.stripe_id, {}, secret_key)
      end

      if options[:at_period_end] == true
        # Store that the subscription will be canceled at the end of the billing period
        subscription.update(cancel_at_period_end: true)
      else
        # Cancel the subscription immediately
        subscription.cancel!
      end
    end
  end
end
