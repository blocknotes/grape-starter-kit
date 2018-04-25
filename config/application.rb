require_relative 'boot'
require 'grape'

Bundler.require

Dir[File.expand_path('./initializers', __dir__)+"/*.rb"].each { |file| require file }
Dir[File.expand_path('../app/models', __dir__)+"/**/*.rb"].each { |file| require file }
Dir[File.expand_path('../app/api', __dir__)+"/**/*.rb"].each { |file| require file }

require_relative 'routes'

module API
  class Application < Grape::API
    API.routes_setup self
  end
end
