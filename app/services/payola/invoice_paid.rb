require Payola::Engine.root.join("app", "services", "payola", "invoice_behavior.rb")

module Payola
  class InvoicePaid
    include Payola::InvoiceBehavior

    def self.call(event)
      sale, charge = create_sale_from_event(event)

      return unless sale

      sale.save!
      sale.finish!

      sale
    end
  end
end
