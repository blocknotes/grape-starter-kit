module Api
  def Api.routes_setup( api )
    api.mount Api::ApplicationController
  end
end
