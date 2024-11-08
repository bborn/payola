# frozen_string_literal: true

module Payola
  class ProcessRefund
    def self.call(guid)
      sale = Sale.find_by(guid: guid)

      begin
        secret_key = Payola.secret_key
        Stripe::Charge.retrieve(sale.stripe_id, secret_key)
        sale.refund!
      rescue Stripe::InvalidRequestError, Stripe::StripeError, RuntimeError => e
        sale.errors.add(:base, e.message)
      end

      sale
    end
  end
end
