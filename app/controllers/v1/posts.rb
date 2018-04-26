module API::V1
  class Posts < Grape::API
    resource :posts do
      desc 'List of posts'
      get do
        present Post.all
      end

      params do
        requires :id, type: Integer, desc: 'The id'
      end
      get ':id' do
        present Post.find(params[:id])
      end
    end
  end
end
