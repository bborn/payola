module Payola
  class CreateCard
    def self.call(stripe_customer_id, token)
      secret_key = Payola.secret_key
      card_fingerprint = Stripe::Token.retrieve(token, secret_key).try(:card).try(:fingerprint)
      customer = Stripe::Customer.retrieve(stripe_customer_id, secret_key)

      sources = Stripe::Customer.list_sources(customer.id, {limit: 100}, secret_key)
      unless sources.data.any? { |source| source.try(:fingerprint) == card_fingerprint }
        Stripe::Customer.create_source(customer.id, {source: token}, secret_key)
      end
    end
  end
end
