# Initializes the rails application used for
# testing.

# Do not output schema loading
ActiveRecord::Migration.verbose = false

module Devise
  module TokenAuthenticatable
    class RailsApp < Rails::Application
      config.root                               = File.dirname(__FILE__) + "/rails_app"
      config.active_support.deprecation         = :log
      config.action_mailer.default_url_options  = { :host => "localhost:3000" }
      config.action_mailer.delivery_method      = :test
      config.eager_load                         = false
    end
  end
end

Devise::TokenAuthenticatable::RailsApp.initialize!
