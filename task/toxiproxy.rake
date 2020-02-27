require 'toxiproxy'
require_relative '../initializers/toxi'

namespace :toxiproxy do

  Toxiproxy.host = Toxi.host

  desc "Populates toxiproxy URLs"
  task :populate do
    Toxiproxy.populate([{
      name: "redis",
      listen: "0.0.0.0:40000",
      upstream: "redis:6379",
      enabled: true
    }])
  end

end

