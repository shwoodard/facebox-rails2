require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "sprockets/railtie"
require 'haml-rails'
require 'sass-rails'
require 'facebox-rails'

module FaceboxRails
  class Application < Rails::Application
    config.root = File.expand_path("../..", __FILE__)

    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    # Configure static asset server for tests with Cache-Control for performance
    config.serve_static_assets = true
    config.static_cache_control = "public, max-age=3600"
    config.assets.debug = true

    # Log error messages when you accidentally call methods on nil
    config.whiny_nils = true

    # Show full error reports and disable caching
    config.consider_all_requests_local       = true
    config.action_controller.perform_caching = false

    # Raise exceptions instead of rendering exception templates
    config.action_dispatch.show_exceptions = false

    # Disable request forgery protection in test environment
    config.action_controller.allow_forgery_protection    = false

    # Print deprecation notices to the stderr
    config.active_support.deprecation = :stderr
  end
end
