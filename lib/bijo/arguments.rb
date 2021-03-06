module Bijo
  class Arguments
    def initialize(argv)
      @argv = argv
    end

    def query
      # スペース入りの query に対応する
      query = ''
      ARGV.each do |arg|
        query += " #{arg}"
      end
      query.slice!(0)
      query
    end

    def valid?
      has_query?
    end

    def request_service
      # 後々、リクエスト先サービスを切り替える際にちゃんと実装する
      'tumblr'
    end

    private

    def has_query?
      !@argv.empty?
    end
  end
end
