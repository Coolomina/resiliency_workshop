require 'redis'
require 'logger'

module Cache
  class << self
    def client
      return @redis if @redis

      @redis = connect
    end

    private

    def connect
      @redis = Redis.new

      @redis
    end
  end
end