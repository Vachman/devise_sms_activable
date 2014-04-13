# -*- encoding: utf-8 -*-
# stub: devise_sms_activable 0.0.9 ruby lib

Gem::Specification.new do |s|
  s.name = "devise_sms_activable"
  s.version = "0.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stefano Valicchia"]
  s.date = "2014-04-10"
  s.description = "It adds support for sending activation tokens via SMS and accepting them."
  s.email = ["stefano.valicchia@gmail.com"]
  s.files = ["app/controllers", "app/controllers/devise", "app/controllers/devise/sms_activations_controller.rb", "app/views", "app/views/devise", "app/views/devise/sms_activations", "app/views/devise/sms_activations/insert.html.erb", "app/views/devise/sms_activations/new.html.erb", "config/locales", "config/locales/en.yml", "lib/devise_sms_activable", "lib/devise_sms_activable/controllers", "lib/devise_sms_activable/controllers/helpers.rb", "lib/devise_sms_activable/controllers/url_helpers.rb", "lib/devise_sms_activable/hooks.rb", "lib/devise_sms_activable/rails.rb", "lib/devise_sms_activable/routes.rb", "lib/devise_sms_activable/schema.rb", "lib/devise_sms_activable/version.rb", "lib/devise_sms_activable.rb", "lib/generators", "lib/generators/active_record", "lib/generators/active_record/devise_sms_activable_generator.rb", "lib/generators/active_record/templates", "lib/generators/active_record/templates/migration.rb", "lib/generators/devise_sms_activable", "lib/generators/devise_sms_activable/devise_sms_activable_generator.rb", "lib/generators/devise_sms_activable/install_generator.rb", "lib/generators/devise_sms_activable/views_generator.rb", "lib/generators/mongoid", "lib/generators/mongoid/devise_sms_activable_generator.rb", "lib/generators/templates", "lib/generators/templates/lib", "lib/generators/templates/lib/sms_sender.rb", "lib/models", "lib/models/sms_activable.rb", "LICENSE", "README.rdoc"]
  s.homepage = "https://github.com/giano/devise_sms_activable"
  s.rdoc_options = ["--main", "README.rdoc", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.6")
  s.rubygems_version = "2.1.3"
  s.summary = "An SMS based activation strategy for Devise"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0.7"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.5.0"])
      s.add_runtime_dependency(%q<rails>, [">= 4.0.0"])
      s.add_runtime_dependency(%q<devise>, [">= 1.1.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0.7"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.5.0"])
      s.add_dependency(%q<rails>, [">= 4.0.0"])
      s.add_dependency(%q<devise>, [">= 1.1.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0.7"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.5.0"])
    s.add_dependency(%q<rails>, [">= 4.0.0"])
    s.add_dependency(%q<devise>, [">= 1.1.0"])
  end
end
