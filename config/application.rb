require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TicketApp
  class Application < Rails::Application
    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.to_prepare do
      # Only Applications list
      Doorkeeper::ApplicationsController.layout "admin/layouts/application"

      # Only Authorization endpoint
      Doorkeeper::AuthorizationsController.layout "admin/layouts/application"

      # Only Authorized Applications
      Doorkeeper::AuthorizedApplicationsController.layout "admin/layouts/application"
    end

    config.middleware.use Rack::Cors do
      allow do
        origins '*'
        resource '*',
          :headers => :any,
          :expose  => ['access-token', 'expiry', 'token-type', 'uid', 'client'],
          :methods => [:get, :post, :options, :delete, :put]
      end
    end
  end
end
