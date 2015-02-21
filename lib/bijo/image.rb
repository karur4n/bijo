require 'open-uri'

module Bijo
  class Image
    def initialize(image_url)
      @image_url = image_url
    end

    def extension
      extension_regexp = /(.*)(?:(\.[^.]+$))/
      @image_url.match(extension_regexp)[2]
    end

    def content
      open(@image_url).read
    end
  end
end
