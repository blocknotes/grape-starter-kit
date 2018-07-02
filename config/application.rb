require_relative 'boot'
require 'grape'

Bundler.require

module Api
  I18n.available_locales = [:en, :it]
end  # API module definition

I18n.load_path += Dir[File.expand_path('./locales', __dir__)+"/*.yml"]

Dir[File.expand_path('./initializers', __dir__)+"/*.rb"].each { |file| require file }
Dir[File.expand_path('../app/models', __dir__)+"/**/*.rb"].each { |file| require file }
Dir[File.expand_path('../app/controllers', __dir__)+"/**/*.rb"].each { |file| require file }

require_relative 'routes'

class Api::Application < Grape::API
  Api.routes_setup self
end
