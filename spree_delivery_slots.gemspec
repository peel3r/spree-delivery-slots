# -*- encoding: utf-8 -*-
# stub: spree_delivery_slots 3.2.0.alpha ruby lib

Gem::Specification.new do |s|
  s.name = "spree_delivery_slots"
  s.version = "3.2.0.alpha"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["peel3r"]
  s.date = "2017-02-18"
  s.description = "Add (optional) gem description here"
  s.email = "ismc2222@gmail.com"
  s.files = [".gitignore", ".rspec", ".travis.yml", "Gemfile", "LICENSE", "README.md", "Rakefile", "app/assets/javascripts/spree/backend/spree_delivery_slots.js", "app/assets/javascripts/spree/backend/spree_delivery_slots/delivery.js", "app/assets/javascripts/spree/frontend/spree_delivery_slots.js", "app/assets/javascripts/spree/frontend/spree_delivery_slots/delivery.js", "app/assets/stylesheets/spree/backend/spree_delivery_slots.css", "app/assets/stylesheets/spree/frontend/spree_delivery_slots.css", "app/models/spree/delivery_slot.rb", "app/models/spree/permitted_attributes_decorator.rb", "app/models/spree/shipment_decorator.rb", "app/models/spree/shipping_method_decorator.rb", "app/overrides/add_delivery_slot_enabled_in_shipping_method_form.rb", "app/overrides/add_delivery_slot_info_in_order_summary.rb", "app/overrides/add_shipping_method_delivery_slot_form_fields.rb", "app/overrides/replace_admin_shipping_form.rb", "app/overrides/replace_shipping_method_inner_in_delivery.rb", "app/validators/spree/delivery_slot_unique_validator.rb", "app/validators/spree/time_frame_validator.rb", "app/views/spree/admin/orders/_shipment_custom_form.html.erb", "app/views/spree/admin/shipping_methods/_delivery_slot_enabled_field.html.erb", "app/views/spree/admin/shipping_methods/_delivery_slot_form.html.erb", "app/views/spree/checkout/_shipping_method_inner.html.erb", "app/views/spree/shared/_shipment_details.html.erb", "app/views/spree/shipment_mailer/shipped_email.html.erb", "app/views/spree/shipment_mailer/shipped_email.text.erb", "bin/rails", "config/locales/en.yml", "config/routes.rb", "db/migrate/20160307083005_create_spree_delivery_slots.rb", "db/migrate/20160307083453_create_spree_shipment_delivery_slot.rb", "db/migrate/20160311073947_add_is_delivery_slots_enabled_to_spree_shipping_method.rb", "db/migrate/20160317153054_drop_spree_shipments_delivery_slots.rb", "db/migrate/20160317190225_remove_is_any_time_slot_from_spree_delivery_slots.rb", "db/migrate/20160317195010_add_delivery_slot_reference_to_spree_shipment.rb", "lib/generators/spree_delivery_slots/install/install_generator.rb", "lib/spree_delivery_slots.rb", "lib/spree_delivery_slots/engine.rb", "lib/spree_delivery_slots/factories.rb", "spec/models/spree/delivery_slot_spec.rb", "spec/models/spree/permitted_attributes_spec.rb", "spec/models/spree/shipment_spec.rb", "spec/models/spree/shipping_method_spec.rb", "spec/spec_helper.rb", "spree_delivery_slots.gemspec"]
  s.homepage = "http://www.spreecommerce.com"
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.requirements = ["none"]
  s.rubygems_version = "2.5.1"
  s.summary = "Add gem summary here"
  s.test_files = ["spec/models/spree/delivery_slot_spec.rb", "spec/models/spree/permitted_attributes_spec.rb", "spec/models/spree/shipment_spec.rb", "spec/models/spree/shipping_method_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["~> 3.2.0.alpha"])
      s.add_development_dependency(%q<capybara>, ["~> 2.4"])
      s.add_development_dependency(%q<coffee-rails>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
      s.add_development_dependency(%q<factory_girl>, ["~> 4.5"])
      s.add_development_dependency(%q<ffaker>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 3.5"])
      s.add_development_dependency(%q<shoulda-matchers>, ["~> 3.0"])
      s.add_development_dependency(%q<sass-rails>, ["~> 5.0.0.beta1"])
      s.add_development_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<spree_core>, ["~> 3.2.0.alpha"])
      s.add_dependency(%q<capybara>, ["~> 2.4"])
      s.add_dependency(%q<coffee-rails>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
      s.add_dependency(%q<factory_girl>, ["~> 4.5"])
      s.add_dependency(%q<ffaker>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 3.5"])
      s.add_dependency(%q<shoulda-matchers>, ["~> 3.0"])
      s.add_dependency(%q<sass-rails>, ["~> 5.0.0.beta1"])
      s.add_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>, ["~> 3.2.0.alpha"])
    s.add_dependency(%q<capybara>, ["~> 2.4"])
    s.add_dependency(%q<coffee-rails>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
    s.add_dependency(%q<factory_girl>, ["~> 4.5"])
    s.add_dependency(%q<ffaker>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 3.5"])
    s.add_dependency(%q<shoulda-matchers>, ["~> 3.0"])
    s.add_dependency(%q<sass-rails>, ["~> 5.0.0.beta1"])
    s.add_dependency(%q<selenium-webdriver>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
