
module Bijo
  module Client
    class Tumblr < Base
      BASE_URI = 'https://tumblr-img-api.herokuapp.com/search/photo'

      def search_results
        json_parsed_search_results
      end

      def search_uri
        URI.escape("#{BASE_URI}?q=#{@query}")
      end
    end
  end
end
