require 'logger'

module Logs
  class << self
    def logger
      return @logger if @logger

      @logger = create_logger(STDOUT)
    end

    def logger_device=(device = STDOUT)
      @logger = create_logger(device)
    end

    private

    def create_logger(device)
      @logger = Logger.new(device)
    end
  end
end    