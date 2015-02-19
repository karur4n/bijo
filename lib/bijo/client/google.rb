require 'bijo/client/base'

module Bijo
  module Client
    class Google < Base
      BASE_URI = 'http://ajax.googleapis.com/ajax/services/search/images?v=1.0&hl=ja'

      def search_results
        json_parsed_search_results['responseData']['results']
      end

    end
  end
end
