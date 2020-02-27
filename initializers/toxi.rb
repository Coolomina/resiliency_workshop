module Toxi
  class << self
    def host
      return @host if @host

      @host = _host
    end

    private

    def _host
      @host = ENV.fetch('TOXI_HOST')
    end
  end
end    