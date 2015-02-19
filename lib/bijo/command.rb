require 'bijo/client/google'
require 'bijo/client/tumblr'

module Bijo
  class Command

    def initialize(arguments)
      @arguments = arguments
    end

    def execute
      image = client.get
      system "qlmanage -p #{image.path}"
    end

    private

    def client(request_service: @arguments.request_service)
      if request_service == 'tumblr'
        Client::Tumblr.new(@arguments.query)
      end
    end
  end
end
