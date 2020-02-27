require 'rspec'
require 'toxiproxy'
require_relative '../initializers/toxi'

libdir = File.expand_path(File.dirname(__FILE__), '../lib')
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

def with_redis_latency(latency=0)
  Toxiproxy.host = Toxi.host

  Toxiproxy[:redis].downstream(:latency, latency: latency).apply do
    yield
  end
end
