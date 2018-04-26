module API::V1
  class Base < Grape::API
    version 'v1'

    get do
      { message: ::I18n.t('root_api') }
    end

    mount Posts
  end
end
