require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(:default, Rails.env)

module TestApp
  class Application < Rails::Application

    # add this config line to load font in assets/fonts folder
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
  end
end
