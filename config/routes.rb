module API
  def API.routes_setup( api )
    api.mount API::ApplicationController
  end
end
