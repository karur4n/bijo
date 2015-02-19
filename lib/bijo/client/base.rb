require 'bijo/image'

require 'json'
require 'open-uri'
require 'tempfile'
# require 'uri'

module Bijo
  module Client
    class Base
      def initialize(query)
        @query = query
        @image = Image.new(choose_image)
      end

      def get
        content = @image.content

        file = Tempfile.new(['bijo', @image.extension])
        file.print content
        file.close
        file
      end

      private

      def raw_search_results
        open(search_uri).read
      end

      def json_parsed_search_results
        JSON.parse(raw_search_results)
      end

      # return image url
      # Ex) http://example.com/hoge.jpg
      def choose_image
        search_results[rand(search_results.size)]
      end
    end
  end
end
