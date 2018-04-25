module API
  class << self
    def routes_setup( api )
      api.format :json

      api.mount API::V1::Base

      api.route :any, '*path' do
        error!( 'not found', 404 )
      end
    end
  end
end
