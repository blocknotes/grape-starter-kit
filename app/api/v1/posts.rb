module API
  module V1
    class Posts < Grape::API
      resource :posts do
        get do
          Post.all
        end
      end
    end
  end
end
