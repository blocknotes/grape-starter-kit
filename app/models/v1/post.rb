# class API::V1::Post

module API
  module V1
    class Post
      class << self
        def all
          [{id: 1}, {id: 2}, {id: 3}]
        end
      end
    end
  end
end
