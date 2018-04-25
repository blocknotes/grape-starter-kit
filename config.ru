require_relative 'config/environment'

# --- RELOAD -------------------------------------------------------------------
use Rack::Reloader

# --- CORS ---------------------------------------------------------------------
# require 'rack/cors'
# use Rack::Cors do
#   allow do
#     origins '*'
#     resource '*', headers: :any, methods: :get
#   end
# end

# ------------------------------------------------------------------------------
run API::Application
