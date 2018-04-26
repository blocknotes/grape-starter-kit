module API::V1
  class Post
    class << self
      def all
        [{ id: 1 }, { id: 2 }, { id: 3 }]
      end

      def find(id)
        { id: id }
      end
    end
  end
end
