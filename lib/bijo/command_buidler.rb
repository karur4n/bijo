require 'bijo/command'
require 'bijo/arguments'

module Bijo
  class CommandBuilder
    def initialize(argv)
      @argv = argv
    end

    def build
      if arguments.valid?
        Command.new(arguments)
      else
        p 'in CommandBuilder: arguments is not valid'
      end
    end

    private

    def arguments
      Arguments.new(@argv)
    end
  end
end
