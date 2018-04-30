module API::V1
  class ApplicationController < Grape::API
    version 'v1'

    get do
      { message: ::I18n.t('root_api') }
    end

    mount PostsController
  end
end
