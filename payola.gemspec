# -*- encoding: utf-8 -*-
# stub: payola-payments 1.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "payola-payments".freeze
  s.version = "1.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Pete Keen".freeze]
  s.date = "2020-05-26"
  s.description = "One-off and subscription payments for your Rails application".freeze
  s.email = ["pete@payola.io".freeze]
  s.files = [".gitignore".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "app/assets/images/payola/.keep".freeze, "app/assets/javascripts/payola.js".freeze, "app/assets/javascripts/payola/application.js".freeze, "app/assets/javascripts/payola/checkout_button.js".freeze, "app/assets/javascripts/payola/form.js".freeze, "app/assets/javascripts/payola/subscription_checkout_button.js".freeze, "app/assets/javascripts/payola/subscription_form_onestep.js".freeze, "app/assets/javascripts/payola/subscription_form_register.js".freeze, "app/assets/javascripts/payola/subscription_form_twostep.js".freeze, "app/assets/stylesheets/payola/application.css".freeze, "app/controllers/concerns/payola/affiliate_behavior.rb".freeze, "app/controllers/concerns/payola/async_behavior.rb".freeze, "app/controllers/concerns/payola/status_behavior.rb".freeze, "app/controllers/payola/application_controller.rb".freeze, "app/controllers/payola/cards_controller.rb".freeze, "app/controllers/payola/customers_controller.rb".freeze, "app/controllers/payola/subscriptions_controller.rb".freeze, "app/controllers/payola/transactions_controller.rb".freeze, "app/helpers/payola/application_helper.rb".freeze, "app/helpers/payola/price_helper.rb".freeze, "app/mailers/payola/admin_mailer.rb".freeze, "app/mailers/payola/receipt_mailer.rb".freeze, "app/models/concerns/payola/guid_behavior.rb".freeze, "app/models/concerns/payola/plan.rb".freeze, "app/models/concerns/payola/sellable.rb".freeze, "app/models/payola/affiliate.rb".freeze, "app/models/payola/coupon.rb".freeze, "app/models/payola/sale.rb".freeze, "app/models/payola/stripe_webhook.rb".freeze, "app/models/payola/subscription.rb".freeze, "app/services/payola/cancel_subscription.rb".freeze, "app/services/payola/change_subscription_plan.rb".freeze, "app/services/payola/change_subscription_quantity.rb".freeze, "app/services/payola/charge_card.rb".freeze, "app/services/payola/create_card.rb".freeze, "app/services/payola/create_plan.rb".freeze, "app/services/payola/create_sale.rb".freeze, "app/services/payola/create_subscription.rb".freeze, "app/services/payola/destroy_card.rb".freeze, "app/services/payola/invoice_behavior.rb".freeze, "app/services/payola/invoice_failed.rb".freeze, "app/services/payola/invoice_paid.rb".freeze, "app/services/payola/process_refund.rb".freeze, "app/services/payola/process_sale.rb".freeze, "app/services/payola/process_subscription.rb".freeze, "app/services/payola/send_mail.rb".freeze, "app/services/payola/start_subscription.rb".freeze, "app/services/payola/subscription_deleted.rb".freeze, "app/services/payola/sync_subscription.rb".freeze, "app/services/payola/update_card.rb".freeze, "app/services/payola/update_customer.rb".freeze, "app/services/payola/update_subscription.rb".freeze, "app/views/layouts/payola/application.html.erb".freeze, "app/views/payola/admin_mailer/dispute.html.erb".freeze, "app/views/payola/admin_mailer/failure.html.erb".freeze, "app/views/payola/admin_mailer/receipt.html.erb".freeze, "app/views/payola/admin_mailer/refund.html.erb".freeze, "app/views/payola/receipt_mailer/receipt.html.erb".freeze, "app/views/payola/receipt_mailer/receipt.text.erb".freeze, "app/views/payola/receipt_mailer/receipt_pdf.html.erb".freeze, "app/views/payola/receipt_mailer/refund.html.erb".freeze, "app/views/payola/subscriptions/_cancel.html.erb".freeze, "app/views/payola/subscriptions/_change_plan.html.erb".freeze, "app/views/payola/subscriptions/_checkout.html.erb".freeze, "app/views/payola/transactions/_checkout.html.erb".freeze, "app/views/payola/transactions/_form.html.erb".freeze, "app/views/payola/transactions/_stripe_header.html.erb".freeze, "app/views/payola/transactions/iframe.html.erb".freeze, "app/views/payola/transactions/new.html.erb".freeze, "app/views/payola/transactions/show.html.erb".freeze, "app/views/payola/transactions/wait.html.erb".freeze, "bin/rails".freeze, "bin/rspec".freeze, "circle.yml".freeze, "config/locales/en.yml".freeze, "config/routes.rb".freeze, "db/migrate/20141001170138_create_payola_sales.rb".freeze, "db/migrate/20141001203541_create_payola_stripe_webhooks.rb".freeze, "db/migrate/20141002013618_create_payola_coupons.rb".freeze, "db/migrate/20141002013701_create_payola_affiliates.rb".freeze, "db/migrate/20141002203725_add_stripe_customer_id_to_sale.rb".freeze, "db/migrate/20141017233304_add_currency_to_payola_sale.rb".freeze, "db/migrate/20141026101628_add_custom_fields_to_payola_sale.rb".freeze, "db/migrate/20141026144800_rename_custom_fields_to_signed_custom_fields_on_payola_sale.rb".freeze, "db/migrate/20141029135848_add_owner_to_payola_sale.rb".freeze, "db/migrate/20141105043439_create_payola_subscriptions.rb".freeze, "db/migrate/20141106034610_add_currency_to_payola_subscriptions.rb".freeze, "db/migrate/20141107025420_add_guid_to_payola_subscriptions.rb".freeze, "db/migrate/20141109203101_add_stripe_status_to_payola_subscription.rb".freeze, "db/migrate/20141112024805_add_affiliate_id_to_payola_subscriptions.rb".freeze, "db/migrate/20141114032013_add_coupon_code_to_payola_subscriptions.rb".freeze, "db/migrate/20141114154223_add_signed_custom_fields_to_payola_subscription.rb".freeze, "db/migrate/20141114163841_add_addresses_to_payola_subscription.rb".freeze, "db/migrate/20141122020755_add_setup_fee_to_payola_subscriptions.rb".freeze, "db/migrate/20141213205847_add_active_to_payola_coupon.rb".freeze, "db/migrate/20150930164135_add_tax_percent_to_payola_subscriptions.rb".freeze, "db/migrate/20151205004838_change_tax_percent_format_in_payola_subscriptions.rb".freeze, "gemfiles/rails_4_1.gemfile".freeze, "gemfiles/rails_4_2.gemfile".freeze, "lib/generators/payola/install_generator.rb".freeze, "lib/generators/payola/templates/initializer.rb".freeze, "lib/payola-payments.rb".freeze, "lib/payola.rb".freeze, "lib/payola/engine.rb".freeze, "lib/payola/version.rb".freeze, "lib/payola/worker.rb".freeze, "lib/payola/worker/active_job.rb".freeze, "lib/payola/worker/base.rb".freeze, "lib/payola/worker/sidekiq.rb".freeze, "lib/payola/worker/sucker_punch.rb".freeze, "lib/tasks/payola_tasks.rake".freeze, "payola.gemspec".freeze]
  s.homepage = "https://www.payola.io".freeze
  s.licenses = ["LGPL-3.0".freeze]
  s.rubygems_version = "3.0.8".freeze
  s.summary = "Drop-in Rails engine for accepting payments with Stripe".freeze

  s.add_dependency "rails", ">= 4.1"
  s.add_dependency "jquery-rails"
  s.add_dependency "stripe", ">= 2.8"
  s.add_dependency "aasm", ">= 4.0.7"
  s.add_dependency "stripe_event", ">= 2.0.0"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4.1"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<stripe>.freeze, [">= 1.20.1"])
      s.add_runtime_dependency(%q<aasm>.freeze, [">= 4.0.7"])
      s.add_runtime_dependency(%q<stripe_event>.freeze, [">= 1.3.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<stripe-ruby-mock>.freeze, [">= 2.3.1"])
      s.add_development_dependency(%q<sucker_punch>.freeze, ["~> 1.2.1"])
      s.add_development_dependency(%q<docverter>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 4.1"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_dependency(%q<stripe>.freeze, [">= 5.39.0"])
      s.add_dependency(%q<aasm>.freeze, [">= 4.0.7"])
      s.add_dependency(%q<stripe_event>.freeze, [">= 1.3.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
      s.add_dependency(%q<stripe-ruby-mock>.freeze, [">= 2.3.1"])
      s.add_dependency(%q<sucker_punch>.freeze, ["~> 1.2.1"])
      s.add_dependency(%q<docverter>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.1"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<stripe>.freeze, [">= 1.20.1"])
    s.add_dependency(%q<aasm>.freeze, [">= 4.0.7"])
    s.add_dependency(%q<stripe_event>.freeze, [">= 1.3.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
    s.add_dependency(%q<stripe-ruby-mock>.freeze, [">= 2.3.1"])
    s.add_dependency(%q<sucker_punch>.freeze, ["~> 1.2.1"])
    s.add_dependency(%q<docverter>.freeze, [">= 0"])
  end
end
