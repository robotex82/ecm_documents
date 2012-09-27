module Ecm
  module Documents
    class Routing
      def self.routes(router, options = {})
        options.reverse_merge! {}

        # router.resources :posts, :controller => 'ecm/downloads/posts'
      end
    end
  end
end

