class API::Base < Grape::API
  format :json
  prefix :api
  rescue_from :all

  get do
    { message: ::I18n.t('root_api'), routes: API::Base::routes.map{ |r| "#{r.request_method} #{r.path}" } }
  end

  route_param :locale do
    before do
      I18n.locale = params[:locale]
    end

    mount API::V1::Base
  end

  route :any, '*path' do
    error!( 'not found', 404 )
  end
end
