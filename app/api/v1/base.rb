module API
  module V1
    class Base < Grape::API
      prefix :api
      version 'v1'

      mount API::V1::Posts
    end
  end
end
